
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tb_ring {int dummy; } ;
struct tb_nhi {int dummy; } ;


 struct tb_ring* tb_ring_alloc (struct tb_nhi*,int,int,int,unsigned int,int ,int ,void (*) (void*),void*) ;

struct tb_ring *tb_ring_alloc_rx(struct tb_nhi *nhi, int hop, int size,
     unsigned int flags, u16 sof_mask, u16 eof_mask,
     void (*start_poll)(void *), void *poll_data)
{
 return tb_ring_alloc(nhi, hop, size, 0, flags, sof_mask, eof_mask,
        start_poll, poll_data);
}
