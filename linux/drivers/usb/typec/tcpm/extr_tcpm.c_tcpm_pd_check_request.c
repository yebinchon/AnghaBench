
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int sink_request; unsigned int nr_src_pdo; int* src_pdo; int op_vsafe5v; } ;
typedef enum pd_pdo_type { ____Placeholder_pd_pdo_type } pd_pdo_type ;


 int EINVAL ;



 int RDO_CAP_MISMATCH ;
 int pdo_fixed_voltage (int) ;
 unsigned int pdo_max_current (int) ;
 unsigned int pdo_max_power (int) ;
 int pdo_max_voltage (int) ;
 int pdo_min_voltage (int) ;
 int pdo_type (int) ;
 unsigned int rdo_index (int) ;
 unsigned int rdo_max_current (int) ;
 unsigned int rdo_max_power (int) ;
 unsigned int rdo_op_current (int) ;
 unsigned int rdo_op_power (int) ;
 int tcpm_log (struct tcpm_port*,char*,int ,unsigned int,unsigned int,unsigned int,...) ;

__attribute__((used)) static int tcpm_pd_check_request(struct tcpm_port *port)
{
 u32 pdo, rdo = port->sink_request;
 unsigned int max, op, pdo_max, index;
 enum pd_pdo_type type;

 index = rdo_index(rdo);
 if (!index || index > port->nr_src_pdo)
  return -EINVAL;

 pdo = port->src_pdo[index - 1];
 type = pdo_type(pdo);
 switch (type) {
 case 129:
 case 128:
  max = rdo_max_current(rdo);
  op = rdo_op_current(rdo);
  pdo_max = pdo_max_current(pdo);

  if (op > pdo_max)
   return -EINVAL;
  if (max > pdo_max && !(rdo & RDO_CAP_MISMATCH))
   return -EINVAL;

  if (type == 129)
   tcpm_log(port,
     "Requested %u mV, %u mA for %u / %u mA",
     pdo_fixed_voltage(pdo), pdo_max, op, max);
  else
   tcpm_log(port,
     "Requested %u -> %u mV, %u mA for %u / %u mA",
     pdo_min_voltage(pdo), pdo_max_voltage(pdo),
     pdo_max, op, max);
  break;
 case 130:
  max = rdo_max_power(rdo);
  op = rdo_op_power(rdo);
  pdo_max = pdo_max_power(pdo);

  if (op > pdo_max)
   return -EINVAL;
  if (max > pdo_max && !(rdo & RDO_CAP_MISMATCH))
   return -EINVAL;
  tcpm_log(port,
    "Requested %u -> %u mV, %u mW for %u / %u mW",
    pdo_min_voltage(pdo), pdo_max_voltage(pdo),
    pdo_max, op, max);
  break;
 default:
  return -EINVAL;
 }

 port->op_vsafe5v = index == 1;

 return 0;
}
