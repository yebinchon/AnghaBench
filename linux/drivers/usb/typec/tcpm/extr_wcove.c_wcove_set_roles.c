
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int regmap; } ;
struct tcpc_dev {int dummy; } ;
typedef enum typec_role { ____Placeholder_typec_role } typec_role ;
typedef enum typec_data_role { ____Placeholder_typec_data_role } typec_data_role ;


 unsigned int PD_REV20 ;
 int TYPEC_HOST ;
 int USBC_PDCFG3 ;
 int USBC_PDCFG3_DATAROLE_SHIFT ;
 unsigned int USBC_PDCFG3_SOP_SHIFT ;
 int WCOVE_FUNC_ROLE ;
 int WCOVE_ROLE_DEVICE ;
 int WCOVE_ROLE_HOST ;
 int regmap_write (int ,int ,unsigned int) ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;
 int wcove_typec_func (struct wcove_typec*,int ,int ) ;

__attribute__((used)) static int wcove_set_roles(struct tcpc_dev *tcpc, bool attached,
      enum typec_role role, enum typec_data_role data)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);
 unsigned int val;
 int ret;

 ret = wcove_typec_func(wcove, WCOVE_FUNC_ROLE, data == TYPEC_HOST ?
          WCOVE_ROLE_HOST : WCOVE_ROLE_DEVICE);
 if (ret)
  return ret;

 val = role;
 val |= data << USBC_PDCFG3_DATAROLE_SHIFT;
 val |= PD_REV20 << USBC_PDCFG3_SOP_SHIFT;

 return regmap_write(wcove->regmap, USBC_PDCFG3, val);
}
