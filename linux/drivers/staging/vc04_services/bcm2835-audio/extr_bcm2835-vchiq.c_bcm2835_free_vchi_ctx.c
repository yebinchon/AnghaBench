
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_vchi_ctx {int * vchi_instance; } ;


 int WARN_ON (int ) ;
 int vchi_disconnect (int *) ;

void bcm2835_free_vchi_ctx(struct bcm2835_vchi_ctx *vchi_ctx)
{

 WARN_ON(vchi_disconnect(vchi_ctx->vchi_instance));

 vchi_ctx->vchi_instance = ((void*)0);
}
