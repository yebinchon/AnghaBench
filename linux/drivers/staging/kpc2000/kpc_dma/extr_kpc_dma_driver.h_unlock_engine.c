
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kpc_dma_device {int sem; } ;


 int BUG_ON (int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static inline
void unlock_engine(struct kpc_dma_device *eng)
{
 BUG_ON(eng == ((void*)0));
 mutex_unlock(&eng->sem);
}
