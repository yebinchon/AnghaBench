
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xenvif_queue {int dummy; } ;


 int idx_to_pfn (struct xenvif_queue*,int ) ;
 scalar_t__ pfn_to_kaddr (int ) ;

__attribute__((used)) static inline unsigned long idx_to_kaddr(struct xenvif_queue *queue,
      u16 idx)
{
 return (unsigned long)pfn_to_kaddr(idx_to_pfn(queue, idx));
}
