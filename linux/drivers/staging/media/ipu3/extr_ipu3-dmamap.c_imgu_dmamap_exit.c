
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_device {int iova_domain; } ;


 int iova_cache_put () ;
 int put_iova_domain (int *) ;

void imgu_dmamap_exit(struct imgu_device *imgu)
{
 put_iova_domain(&imgu->iova_domain);
 iova_cache_put();
}
