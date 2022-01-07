
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_attr {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int set_status_attr (int) ;
 int * status_attrs ;
 int vhci_num_controllers ;

__attribute__((used)) static int init_status_attrs(void)
{
 int id;

 status_attrs = kcalloc(vhci_num_controllers, sizeof(struct status_attr),
          GFP_KERNEL);
 if (status_attrs == ((void*)0))
  return -ENOMEM;

 for (id = 0; id < vhci_num_controllers; id++)
  set_status_attr(id);

 return 0;
}
