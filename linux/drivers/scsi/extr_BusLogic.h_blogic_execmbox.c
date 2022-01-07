
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blogic_adapter {int dummy; } ;


 int BLOGIC_EXEC_MBOX_CMD ;
 int blogic_setcmdparam (struct blogic_adapter*,int ) ;

__attribute__((used)) static inline void blogic_execmbox(struct blogic_adapter *adapter)
{
 blogic_setcmdparam(adapter, BLOGIC_EXEC_MBOX_CMD);
}
