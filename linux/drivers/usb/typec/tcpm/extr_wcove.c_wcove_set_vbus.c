
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcove_typec {int dummy; } ;
struct tcpc_dev {int dummy; } ;


 int WCOVE_FUNC_DRIVE_VBUS ;
 struct wcove_typec* tcpc_to_wcove (struct tcpc_dev*) ;
 int wcove_typec_func (struct wcove_typec*,int ,int) ;

__attribute__((used)) static int wcove_set_vbus(struct tcpc_dev *tcpc, bool on, bool sink)
{
 struct wcove_typec *wcove = tcpc_to_wcove(tcpc);

 return wcove_typec_func(wcove, WCOVE_FUNC_DRIVE_VBUS, on);
}
