
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int dummy; } ;
typedef enum pdo_err { ____Placeholder_pdo_err } pdo_err ;
typedef enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;


 int APDO_TYPE_PPS ;
 int PDO_ERR_DUPE_PDO ;
 int PDO_ERR_DUPE_PPS_APDO ;
 int PDO_ERR_FIXED_NOT_SORTED ;
 int PDO_ERR_NO_VSAFE5V ;
 int PDO_ERR_PDO_TYPE_NOT_IN_ORDER ;
 int PDO_ERR_PPS_APDO_NOT_SORTED ;
 int PDO_ERR_VARIABLE_BATT_NOT_SORTED ;
 int PDO_ERR_VSAFE5V_NOT_FIRST ;
 int PDO_NO_ERR ;




 scalar_t__ VSAFE5V ;
 int pdo_apdo_type (int const) ;
 scalar_t__ pdo_fixed_voltage (int const) ;
 int pdo_max_voltage (int const) ;
 int pdo_min_voltage (int const) ;
 int pdo_pps_apdo_max_current (int const) ;
 int pdo_pps_apdo_max_voltage (int const) ;
 int pdo_pps_apdo_min_voltage (int const) ;
 scalar_t__ pdo_type (int const) ;
 int tcpm_log_force (struct tcpm_port*,char*) ;

__attribute__((used)) static enum pdo_err tcpm_caps_err(struct tcpm_port *port, const u32 *pdo,
      unsigned int nr_pdo)
{
 unsigned int i;


 if (nr_pdo < 1)
  return PDO_ERR_NO_VSAFE5V;


 if (pdo_type(pdo[0]) != 129 ||
     pdo_fixed_voltage(pdo[0]) != VSAFE5V)
  return PDO_ERR_VSAFE5V_NOT_FIRST;

 for (i = 1; i < nr_pdo; i++) {
  if (pdo_type(pdo[i]) < pdo_type(pdo[i - 1])) {
   return PDO_ERR_PDO_TYPE_NOT_IN_ORDER;
  } else if (pdo_type(pdo[i]) == pdo_type(pdo[i - 1])) {
   enum pd_pdo_type type = pdo_type(pdo[i]);

   switch (type) {





   case 129:
    if (pdo_fixed_voltage(pdo[i]) <=
        pdo_fixed_voltage(pdo[i - 1]))
     return PDO_ERR_FIXED_NOT_SORTED;
    break;





   case 128:
   case 130:
    if (pdo_min_voltage(pdo[i]) <
        pdo_min_voltage(pdo[i - 1]))
     return PDO_ERR_VARIABLE_BATT_NOT_SORTED;
    else if ((pdo_min_voltage(pdo[i]) ==
       pdo_min_voltage(pdo[i - 1])) &&
      (pdo_max_voltage(pdo[i]) ==
       pdo_max_voltage(pdo[i - 1])))
     return PDO_ERR_DUPE_PDO;
    break;





   case 131:
    if (pdo_apdo_type(pdo[i]) != APDO_TYPE_PPS)
     break;

    if (pdo_pps_apdo_max_voltage(pdo[i]) <
        pdo_pps_apdo_max_voltage(pdo[i - 1]))
     return PDO_ERR_PPS_APDO_NOT_SORTED;
    else if (pdo_pps_apdo_min_voltage(pdo[i]) ==
       pdo_pps_apdo_min_voltage(pdo[i - 1]) &&
      pdo_pps_apdo_max_voltage(pdo[i]) ==
       pdo_pps_apdo_max_voltage(pdo[i - 1]) &&
      pdo_pps_apdo_max_current(pdo[i]) ==
       pdo_pps_apdo_max_current(pdo[i - 1]))
     return PDO_ERR_DUPE_PPS_APDO;
    break;
   default:
    tcpm_log_force(port, " Unknown pdo type");
   }
  }
 }

 return PDO_NO_ERR;
}
