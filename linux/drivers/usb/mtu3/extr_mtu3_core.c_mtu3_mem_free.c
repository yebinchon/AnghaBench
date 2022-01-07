
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int ep_array; } ;


 int kfree (int ) ;
 int mtu3_qmu_exit (struct mtu3*) ;

__attribute__((used)) static void mtu3_mem_free(struct mtu3 *mtu)
{
 mtu3_qmu_exit(mtu);
 kfree(mtu->ep_array);
}
