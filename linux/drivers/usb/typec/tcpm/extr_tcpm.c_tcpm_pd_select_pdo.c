
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int supported; } ;
struct tcpm_port {unsigned int nr_source_caps; unsigned int nr_snk_pdo; int * snk_pdo; int usb_type; TYPE_1__ pps_data; int * source_caps; } ;
typedef enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;


 int APDO_TYPE_PPS ;
 int EINVAL ;




 int POWER_SUPPLY_USB_TYPE_PD ;
 int POWER_SUPPLY_USB_TYPE_PD_PPS ;
 int pdo_apdo_type (int ) ;
 unsigned int pdo_fixed_voltage (int ) ;
 unsigned int pdo_max_current (int ) ;
 unsigned int pdo_max_power (int ) ;
 unsigned int pdo_max_voltage (int ) ;
 unsigned int pdo_min_voltage (int ) ;
 int pdo_type (int ) ;
 int tcpm_log (struct tcpm_port*,char*) ;

__attribute__((used)) static int tcpm_pd_select_pdo(struct tcpm_port *port, int *sink_pdo,
         int *src_pdo)
{
 unsigned int i, j, max_src_mv = 0, min_src_mv = 0, max_mw = 0,
       max_mv = 0, src_mw = 0, src_ma = 0, max_snk_mv = 0,
       min_snk_mv = 0;
 int ret = -EINVAL;

 port->pps_data.supported = 0;
 port->usb_type = POWER_SUPPLY_USB_TYPE_PD;





 for (i = 0; i < port->nr_source_caps; i++) {
  u32 pdo = port->source_caps[i];
  enum pd_pdo_type type = pdo_type(pdo);

  switch (type) {
  case 129:
   max_src_mv = pdo_fixed_voltage(pdo);
   min_src_mv = max_src_mv;
   break;
  case 130:
  case 128:
   max_src_mv = pdo_max_voltage(pdo);
   min_src_mv = pdo_min_voltage(pdo);
   break;
  case 131:
   if (pdo_apdo_type(pdo) == APDO_TYPE_PPS) {
    port->pps_data.supported = 1;
    port->usb_type =
     POWER_SUPPLY_USB_TYPE_PD_PPS;
   }
   continue;
  default:
   tcpm_log(port, "Invalid source PDO type, ignoring");
   continue;
  }

  switch (type) {
  case 129:
  case 128:
   src_ma = pdo_max_current(pdo);
   src_mw = src_ma * min_src_mv / 1000;
   break;
  case 130:
   src_mw = pdo_max_power(pdo);
   break;
  case 131:
   continue;
  default:
   tcpm_log(port, "Invalid source PDO type, ignoring");
   continue;
  }

  for (j = 0; j < port->nr_snk_pdo; j++) {
   pdo = port->snk_pdo[j];

   switch (pdo_type(pdo)) {
   case 129:
    max_snk_mv = pdo_fixed_voltage(pdo);
    min_snk_mv = max_snk_mv;
    break;
   case 130:
   case 128:
    max_snk_mv = pdo_max_voltage(pdo);
    min_snk_mv = pdo_min_voltage(pdo);
    break;
   case 131:
    continue;
   default:
    tcpm_log(port, "Invalid sink PDO type, ignoring");
    continue;
   }

   if (max_src_mv <= max_snk_mv &&
    min_src_mv >= min_snk_mv) {

    if ((src_mw == max_mw && min_src_mv > max_mv) ||
       src_mw > max_mw) {
     *src_pdo = i;
     *sink_pdo = j;
     max_mw = src_mw;
     max_mv = min_src_mv;
     ret = 0;
    }
   }
  }
 }

 return ret;
}
