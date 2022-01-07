
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_eaddr {int dummy; } ;
struct slim_device {int dummy; } ;
struct slim_controller {int dummy; } ;


 int ENOMEM ;
 struct slim_device* ERR_PTR (int ) ;
 struct slim_device* find_slim_device (struct slim_controller*,struct slim_eaddr*) ;
 struct slim_device* slim_alloc_device (struct slim_controller*,struct slim_eaddr*,int *) ;

struct slim_device *slim_get_device(struct slim_controller *ctrl,
        struct slim_eaddr *e_addr)
{
 struct slim_device *sbdev;

 sbdev = find_slim_device(ctrl, e_addr);
 if (!sbdev) {
  sbdev = slim_alloc_device(ctrl, e_addr, ((void*)0));
  if (!sbdev)
   return ERR_PTR(-ENOMEM);
 }

 return sbdev;
}
