
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcpm_port {int dummy; } ;
typedef enum pdo_err { ____Placeholder_pdo_err } pdo_err ;


 int EINVAL ;
 int PDO_NO_ERR ;
 int * pdo_err_msg ;
 int tcpm_caps_err (struct tcpm_port*,int const*,unsigned int) ;
 int tcpm_log_force (struct tcpm_port*,char*,int ) ;

__attribute__((used)) static int tcpm_validate_caps(struct tcpm_port *port, const u32 *pdo,
         unsigned int nr_pdo)
{
 enum pdo_err err_index = tcpm_caps_err(port, pdo, nr_pdo);

 if (err_index != PDO_NO_ERR) {
  tcpm_log_force(port, " %s", pdo_err_msg[err_index]);
  return -EINVAL;
 }

 return 0;
}
