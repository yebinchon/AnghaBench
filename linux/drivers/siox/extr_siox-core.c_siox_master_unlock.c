
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void siox_master_unlock(struct siox_master *smaster)
{
 mutex_unlock(&smaster->lock);
}
