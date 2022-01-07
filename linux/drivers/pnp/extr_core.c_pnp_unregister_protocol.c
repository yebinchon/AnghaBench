
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_protocol {int dev; } ;


 int device_unregister (int *) ;
 int pnp_remove_protocol (struct pnp_protocol*) ;

void pnp_unregister_protocol(struct pnp_protocol *protocol)
{
 pnp_remove_protocol(protocol);
 device_unregister(&protocol->dev);
}
