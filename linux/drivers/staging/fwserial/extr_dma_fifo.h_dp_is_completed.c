
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pending {scalar_t__ data; } ;



__attribute__((used)) static inline bool dp_is_completed(struct dma_pending *dp)
{
 return (unsigned long)dp->data & 1UL;
}
