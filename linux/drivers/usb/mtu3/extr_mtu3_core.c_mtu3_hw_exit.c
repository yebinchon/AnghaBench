
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int dummy; } ;


 int mtu3_device_disable (struct mtu3*) ;
 int mtu3_mem_free (struct mtu3*) ;

__attribute__((used)) static void mtu3_hw_exit(struct mtu3 *mtu)
{
 mtu3_device_disable(mtu);
 mtu3_mem_free(mtu);
}
