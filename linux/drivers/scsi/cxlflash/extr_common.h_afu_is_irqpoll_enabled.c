
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afu {int irqpoll_weight; } ;



__attribute__((used)) static inline bool afu_is_irqpoll_enabled(struct afu *afu)
{
 return !!afu->irqpoll_weight;
}
