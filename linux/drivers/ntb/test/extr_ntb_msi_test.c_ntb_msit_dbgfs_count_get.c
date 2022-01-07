
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ntb_msit_peer {int num_irqs; } ;



__attribute__((used)) static int ntb_msit_dbgfs_count_get(void *data, u64 *count)
{
 struct ntb_msit_peer *peer = data;

 *count = peer->num_irqs;

 return 0;
}
