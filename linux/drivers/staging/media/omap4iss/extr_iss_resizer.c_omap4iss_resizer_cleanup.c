
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct iss_resizer_device {TYPE_1__ subdev; } ;
struct iss_device {struct iss_resizer_device resizer; } ;


 int media_entity_cleanup (int *) ;

void omap4iss_resizer_cleanup(struct iss_device *iss)
{
 struct iss_resizer_device *resizer = &iss->resizer;

 media_entity_cleanup(&resizer->subdev.entity);
}
