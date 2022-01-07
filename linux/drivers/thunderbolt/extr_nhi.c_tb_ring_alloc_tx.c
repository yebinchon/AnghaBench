
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_ring {int dummy; } ;
struct tb_nhi {int dummy; } ;


 struct tb_ring* tb_ring_alloc (struct tb_nhi*,int,int,int,unsigned int,int ,int ,int *,int *) ;

struct tb_ring *tb_ring_alloc_tx(struct tb_nhi *nhi, int hop, int size,
     unsigned int flags)
{
 return tb_ring_alloc(nhi, hop, size, 1, flags, 0, 0, ((void*)0), ((void*)0));
}
