
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_res {void* data; int release; int entry; } ;
struct spi_device {int dummy; } ;
typedef int spi_res_release_t ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct spi_res* kzalloc (int,int ) ;

void *spi_res_alloc(struct spi_device *spi,
      spi_res_release_t release,
      size_t size, gfp_t gfp)
{
 struct spi_res *sres;

 sres = kzalloc(sizeof(*sres) + size, gfp);
 if (!sres)
  return ((void*)0);

 INIT_LIST_HEAD(&sres->entry);
 sres->release = release;

 return sres->data;
}
