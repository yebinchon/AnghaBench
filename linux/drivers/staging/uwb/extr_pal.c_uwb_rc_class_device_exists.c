
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct device {int dummy; } ;


 struct device* class_find_device (int *,int *,struct uwb_rc*,int ) ;
 int find_rc ;
 int put_device (struct device*) ;
 int uwb_rc_class ;

__attribute__((used)) static bool uwb_rc_class_device_exists(struct uwb_rc *target_rc)
{
 struct device *dev;

 dev = class_find_device(&uwb_rc_class, ((void*)0), target_rc, find_rc);

 put_device(dev);

 return (dev != ((void*)0));
}
