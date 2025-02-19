
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_route_tables {int dummy; } ;
struct TYPE_2__ {struct ni_route_tables routing_tables; } ;


 int EINVAL ;
 int O (int) ;
 int init_pci_fake () ;
 int ni_check_trigger_arg (int,int,struct ni_route_tables const*) ;
 int ni_check_trigger_arg_roffs (int,int,struct ni_route_tables const*,int) ;
 TYPE_1__ private ;
 int unittest (int,char*) ;

void test_ni_check_trigger_arg(void)
{
 const struct ni_route_tables *T = &private.routing_tables;

 init_pci_fake();
 unittest(ni_check_trigger_arg(0, O(0), T) == -EINVAL,
   "check bad direct trigger arg for first reg->dest\n");
 unittest(ni_check_trigger_arg(0, O(1), T) == 0,
   "check direct trigger arg for first reg->dest\n");
 unittest(ni_check_trigger_arg(4, O(6), T) == 0,
   "check direct trigger arg for middle reg->dest\n");
 unittest(ni_check_trigger_arg(9, O(8), T) == 0,
   "check direct trigger arg for last reg->dest\n");

 unittest(ni_check_trigger_arg_roffs(-1, O(0), T, 1) == -EINVAL,
   "check bad direct trigger arg for first reg->dest w/offs\n");
 unittest(ni_check_trigger_arg_roffs(0, O(1), T, 0) == 0,
   "check direct trigger arg for first reg->dest w/offs\n");
 unittest(ni_check_trigger_arg_roffs(3, O(6), T, 1) == 0,
   "check direct trigger arg for middle reg->dest w/offs\n");
 unittest(ni_check_trigger_arg_roffs(7, O(8), T, 2) == 0,
   "check direct trigger arg for last reg->dest w/offs\n");

 unittest(ni_check_trigger_arg(O(0), O(0), T) == -EINVAL,
   "check bad trigger arg for first src->dest\n");
 unittest(ni_check_trigger_arg(O(0), O(1), T) == 0,
   "check trigger arg for first src->dest\n");
 unittest(ni_check_trigger_arg(O(5), O(6), T) == 0,
   "check trigger arg for middle src->dest\n");
 unittest(ni_check_trigger_arg(O(8), O(9), T) == 0,
   "check trigger arg for last src->dest\n");
}
