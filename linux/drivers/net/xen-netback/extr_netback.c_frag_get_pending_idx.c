
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int skb_frag_t ;


 int skb_frag_off (int *) ;

__attribute__((used)) static u16 frag_get_pending_idx(skb_frag_t *frag)
{
 return (u16)skb_frag_off(frag);
}
