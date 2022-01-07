
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct _adapter {int cmd_thread; TYPE_1__* pnetdev; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ IS_ERR (int ) ;
 int _FAIL ;
 int _SUCCESS ;
 int kthread_run (int ,struct _adapter*,char*,int ) ;
 int r8712_cmd_thread ;

__attribute__((used)) static u32 start_drv_threads(struct _adapter *padapter)
{
 padapter->cmd_thread = kthread_run(r8712_cmd_thread, padapter, "%s",
       padapter->pnetdev->name);
 if (IS_ERR(padapter->cmd_thread))
  return _FAIL;
 return _SUCCESS;
}
