
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int media_dev; int v4l2_dev; int csi2b; int csi2a; int ipipeif; int ipipe; int resizer; } ;


 int media_device_unregister (int *) ;
 int omap4iss_csi2_unregister_entities (int *) ;
 int omap4iss_ipipe_unregister_entities (int *) ;
 int omap4iss_ipipeif_unregister_entities (int *) ;
 int omap4iss_resizer_unregister_entities (int *) ;
 int v4l2_device_unregister (int *) ;

__attribute__((used)) static void iss_unregister_entities(struct iss_device *iss)
{
 omap4iss_resizer_unregister_entities(&iss->resizer);
 omap4iss_ipipe_unregister_entities(&iss->ipipe);
 omap4iss_ipipeif_unregister_entities(&iss->ipipeif);
 omap4iss_csi2_unregister_entities(&iss->csi2a);
 omap4iss_csi2_unregister_entities(&iss->csi2b);

 v4l2_device_unregister(&iss->v4l2_dev);
 media_device_unregister(&iss->media_dev);
}
