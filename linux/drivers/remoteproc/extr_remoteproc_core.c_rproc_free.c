
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dev; } ;


 int put_device (int *) ;

void rproc_free(struct rproc *rproc)
{
 put_device(&rproc->dev);
}
