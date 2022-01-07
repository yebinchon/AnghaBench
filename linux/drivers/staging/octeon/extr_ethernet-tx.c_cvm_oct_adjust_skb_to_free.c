
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_SKB_TO_FREE ;
 int cvmx_fau_atomic_add32 (int,int) ;

__attribute__((used)) static inline int cvm_oct_adjust_skb_to_free(int skb_to_free, int fau)
{
 int undo;

 undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
         MAX_SKB_TO_FREE;
 if (undo > 0)
  cvmx_fau_atomic_add32(fau, -undo);
 skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
             -skb_to_free;
 return skb_to_free;
}
