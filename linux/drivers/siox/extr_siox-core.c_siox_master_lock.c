
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int lock; } ;


 int mutex_lock (int *) ;

__attribute__((used)) static void siox_master_lock(struct siox_master *smaster)
{
 mutex_lock(&smaster->lock);
}
