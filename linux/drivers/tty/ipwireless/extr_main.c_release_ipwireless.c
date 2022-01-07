
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ipw_dev {TYPE_2__* link; scalar_t__ attr_memory; scalar_t__ common_memory; } ;
struct TYPE_4__ {TYPE_1__** resource; } ;
struct TYPE_3__ {int start; } ;


 int iounmap (scalar_t__) ;
 int pcmcia_disable_device (TYPE_2__*) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static void release_ipwireless(struct ipw_dev *ipw)
{
 release_region(ipw->link->resource[0]->start,
         resource_size(ipw->link->resource[0]));
 if (ipw->common_memory) {
  release_mem_region(ipw->link->resource[2]->start,
    resource_size(ipw->link->resource[2]));
  iounmap(ipw->common_memory);
 }
 if (ipw->attr_memory) {
  release_mem_region(ipw->link->resource[3]->start,
    resource_size(ipw->link->resource[3]));
  iounmap(ipw->attr_memory);
 }
 pcmcia_disable_device(ipw->link);
}
