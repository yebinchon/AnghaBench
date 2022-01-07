
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctl_pkg {int frame; TYPE_1__* ctl; } ;
struct TYPE_2__ {int rx; } ;


 int tb_ring_rx (int ,int *) ;

__attribute__((used)) static void tb_ctl_rx_submit(struct ctl_pkg *pkg)
{
 tb_ring_rx(pkg->ctl->rx, &pkg->frame);





}
