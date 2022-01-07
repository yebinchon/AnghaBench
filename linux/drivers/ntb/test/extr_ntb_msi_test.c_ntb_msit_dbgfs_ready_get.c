
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_msit_peer {int init_comp; } ;


 int try_wait_for_completion (int *) ;

__attribute__((used)) static int ntb_msit_dbgfs_ready_get(void *data, u64 *ready)
{
 struct ntb_msit_peer *peer = data;

 *ready = try_wait_for_completion(&peer->init_comp);

 return 0;
}
