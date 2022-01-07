
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free_irq (int ,int ) ;
 int platform_device_unregister (int *) ;
 int platform_driver_unregister (int *) ;
 int vrc4171_card_device ;
 int vrc4171_card_driver ;
 int vrc4171_irq ;
 int vrc4171_remove_sockets () ;
 int vrc4171_sockets ;

__attribute__((used)) static void vrc4171_card_exit(void)
{
 free_irq(vrc4171_irq, vrc4171_sockets);
 vrc4171_remove_sockets();
 platform_device_unregister(&vrc4171_card_device);
 platform_driver_unregister(&vrc4171_card_driver);
}
