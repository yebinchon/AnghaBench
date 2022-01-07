
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct iss_ipipeif_device {TYPE_1__ subdev; } ;
struct iss_device {struct iss_ipipeif_device ipipeif; } ;


 int media_entity_cleanup (int *) ;

void omap4iss_ipipeif_cleanup(struct iss_device *iss)
{
 struct iss_ipipeif_device *ipipeif = &iss->ipipeif;

 media_entity_cleanup(&ipipeif->subdev.entity);
}
