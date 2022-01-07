
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_channel {int irq_pending; } ;


 scalar_t__ atomic_cmpxchg (int *,int ,int) ;

__attribute__((used)) static inline bool qeth_trylock_channel(struct qeth_channel *channel)
{
 return atomic_cmpxchg(&channel->irq_pending, 0, 1) == 0;
}
