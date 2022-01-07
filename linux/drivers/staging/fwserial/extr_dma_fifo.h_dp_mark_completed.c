
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pending {int data; } ;



__attribute__((used)) static inline void dp_mark_completed(struct dma_pending *dp)
{
 dp->data += 1;
}
