
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int skb_frag_t ;


 int skb_frag_off_set (int *,int ) ;

__attribute__((used)) static void frag_set_pending_idx(skb_frag_t *frag, u16 pending_idx)
{
 skb_frag_off_set(frag, pending_idx);
}
