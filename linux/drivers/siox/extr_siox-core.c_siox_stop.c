
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int dummy; } ;


 int __siox_stop (struct siox_master*) ;
 int siox_master_lock (struct siox_master*) ;
 int siox_master_unlock (struct siox_master*) ;

__attribute__((used)) static int siox_stop(struct siox_master *smaster)
{
 int ret;

 siox_master_lock(smaster);
 ret = __siox_stop(smaster);
 siox_master_unlock(smaster);

 return ret;
}
