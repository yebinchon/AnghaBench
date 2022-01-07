
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmlogrdr_priv_t {int * device; int minor_num; } ;


 int MKDEV (int ,int ) ;
 int device_destroy (int ,int ) ;
 int device_unregister (int *) ;
 int vmlogrdr_class ;
 int vmlogrdr_major ;

__attribute__((used)) static int vmlogrdr_unregister_device(struct vmlogrdr_priv_t *priv)
{
 device_destroy(vmlogrdr_class, MKDEV(vmlogrdr_major, priv->minor_num));
 if (priv->device != ((void*)0)) {
  device_unregister(priv->device);
  priv->device=((void*)0);
 }
 return 0;
}
