
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int max_volt; unsigned int max_curr; unsigned int out_volt; unsigned int op_curr; } ;
struct tcpm_port {unsigned int operating_snk_mw; scalar_t__ vconn_role; TYPE_1__ pps_data; int polarity; int vbus_source; int cc2; int cc1; int cc_req; int * source_caps; } ;
typedef enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;


 int APDO_TYPE_PPS ;
 int EINVAL ;
 int EOPNOTSUPP ;

 unsigned int RDO_NO_SUSPEND ;
 int RDO_PROG (unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int RDO_PROG_CURR_MA_STEP ;
 unsigned int RDO_PROG_VOLT_MV_STEP ;
 unsigned int RDO_USB_COMM ;
 scalar_t__ TYPEC_SOURCE ;
 int pdo_apdo_type (int ) ;
 int pdo_type (int ) ;
 int tcpm_log (struct tcpm_port*,char*,...) ;
 unsigned int tcpm_pd_select_pps_apdo (struct tcpm_port*) ;

__attribute__((used)) static int tcpm_pd_build_pps_request(struct tcpm_port *port, u32 *rdo)
{
 unsigned int out_mv, op_ma, op_mw, max_mv, max_ma, flags;
 enum pd_pdo_type type;
 unsigned int src_pdo_index;
 u32 pdo;

 src_pdo_index = tcpm_pd_select_pps_apdo(port);
 if (!src_pdo_index)
  return -EOPNOTSUPP;

 pdo = port->source_caps[src_pdo_index];
 type = pdo_type(pdo);

 switch (type) {
 case 128:
  if (pdo_apdo_type(pdo) != APDO_TYPE_PPS) {
   tcpm_log(port, "Invalid APDO selected!");
   return -EINVAL;
  }
  max_mv = port->pps_data.max_volt;
  max_ma = port->pps_data.max_curr;
  out_mv = port->pps_data.out_volt;
  op_ma = port->pps_data.op_curr;
  break;
 default:
  tcpm_log(port, "Invalid PDO selected!");
  return -EINVAL;
 }

 flags = RDO_USB_COMM | RDO_NO_SUSPEND;

 op_mw = (op_ma * out_mv) / 1000;
 if (op_mw < port->operating_snk_mw) {






  op_ma = (port->operating_snk_mw * 1000) / out_mv;
  if ((port->operating_snk_mw * 1000) % out_mv)
   ++op_ma;
  op_ma += RDO_PROG_CURR_MA_STEP - (op_ma % RDO_PROG_CURR_MA_STEP);

  if (op_ma > max_ma) {
   op_ma = max_ma;
   out_mv = (port->operating_snk_mw * 1000) / op_ma;
   if ((port->operating_snk_mw * 1000) % op_ma)
    ++out_mv;
   out_mv += RDO_PROG_VOLT_MV_STEP -
      (out_mv % RDO_PROG_VOLT_MV_STEP);

   if (out_mv > max_mv) {
    tcpm_log(port, "Invalid PPS APDO selected!");
    return -EINVAL;
   }
  }
 }

 tcpm_log(port, "cc=%d cc1=%d cc2=%d vbus=%d vconn=%s polarity=%d",
   port->cc_req, port->cc1, port->cc2, port->vbus_source,
   port->vconn_role == TYPEC_SOURCE ? "source" : "sink",
   port->polarity);

 *rdo = RDO_PROG(src_pdo_index + 1, out_mv, op_ma, flags);

 tcpm_log(port, "Requesting APDO %d: %u mV, %u mA",
   src_pdo_index, out_mv, op_ma);

 port->pps_data.op_curr = op_ma;
 port->pps_data.out_volt = out_mv;

 return 0;
}
