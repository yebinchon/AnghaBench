
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siox_master {int dev; } ;


 void* dev_get_drvdata (int *) ;

__attribute__((used)) static inline void *siox_master_get_devdata(struct siox_master *smaster)
{
 return dev_get_drvdata(&smaster->dev);
}
