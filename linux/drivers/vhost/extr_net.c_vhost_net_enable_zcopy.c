
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vhost_net_zcopy_mask ;

__attribute__((used)) static void vhost_net_enable_zcopy(int vq)
{
 vhost_net_zcopy_mask |= 0x1 << vq;
}
