
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int rproc; int mbox; } ;


 TYPE_1__* m3_ipc_state ;
 int mbox_free_channel (int ) ;
 int rproc_put (int ) ;
 int rproc_shutdown (int ) ;

__attribute__((used)) static int wkup_m3_ipc_remove(struct platform_device *pdev)
{
 mbox_free_channel(m3_ipc_state->mbox);

 rproc_shutdown(m3_ipc_state->rproc);
 rproc_put(m3_ipc_state->rproc);

 m3_ipc_state = ((void*)0);

 return 0;
}
