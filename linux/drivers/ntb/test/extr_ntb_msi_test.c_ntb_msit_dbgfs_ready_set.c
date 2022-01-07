
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_msit_peer {int init_comp; } ;


 int wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int ntb_msit_dbgfs_ready_set(void *data, u64 ready)
{
 struct ntb_msit_peer *peer = data;

 return wait_for_completion_interruptible(&peer->init_comp);
}
