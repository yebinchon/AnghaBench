
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int nr_src_pdo; int * src_pdo; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;


 scalar_t__ PDO_TYPE_FIXED ;
 int TYPEC_CC_RP_1_5 ;
 int TYPEC_CC_RP_3_0 ;
 int TYPEC_CC_RP_DEF ;
 int pdo_fixed_voltage (int const) ;
 unsigned int pdo_max_current (int const) ;
 scalar_t__ pdo_type (int const) ;

__attribute__((used)) static enum typec_cc_status tcpm_rp_cc(struct tcpm_port *port)
{
 const u32 *src_pdo = port->src_pdo;
 int nr_pdo = port->nr_src_pdo;
 int i;





 for (i = 0; i < nr_pdo; i++) {
  const u32 pdo = src_pdo[i];

  if (pdo_type(pdo) == PDO_TYPE_FIXED &&
      pdo_fixed_voltage(pdo) == 5000) {
   unsigned int curr = pdo_max_current(pdo);

   if (curr >= 3000)
    return TYPEC_CC_RP_3_0;
   else if (curr >= 1500)
    return TYPEC_CC_RP_1_5;
   return TYPEC_CC_RP_DEF;
  }
 }

 return TYPEC_CC_RP_DEF;
}
