
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {int entity; } ;
struct TYPE_11__ {TYPE_9__ subdev; } ;
struct TYPE_18__ {int entity; } ;
struct TYPE_19__ {TYPE_7__ subdev; } ;
struct TYPE_16__ {int entity; } ;
struct TYPE_17__ {TYPE_5__ subdev; } ;
struct TYPE_14__ {int entity; } ;
struct TYPE_15__ {TYPE_3__ subdev; } ;
struct TYPE_12__ {int entity; } ;
struct TYPE_13__ {TYPE_1__ subdev; } ;
struct iss_device {TYPE_10__ resizer; TYPE_8__ ipipe; TYPE_6__ ipipeif; TYPE_4__ csi2b; TYPE_2__ csi2a; int dev; } ;


 int CSI2_PAD_SOURCE ;
 int IPIPEIF_PAD_SINK ;
 int IPIPEIF_PAD_SOURCE_VP ;
 int IPIPE_PAD_SINK ;
 int IPIPE_PAD_SOURCE_VP ;
 int RESIZER_PAD_SINK ;
 int dev_err (int ,char*) ;
 int media_create_pad_link (int *,int ,int *,int ,int ) ;
 int omap4iss_csi2_create_links (struct iss_device*) ;
 int omap4iss_ipipeif_create_links (struct iss_device*) ;
 int omap4iss_resizer_create_links (struct iss_device*) ;

__attribute__((used)) static int iss_create_links(struct iss_device *iss)
{
 int ret;

 ret = omap4iss_csi2_create_links(iss);
 if (ret < 0) {
  dev_err(iss->dev, "CSI2 pads links creation failed\n");
  return ret;
 }

 ret = omap4iss_ipipeif_create_links(iss);
 if (ret < 0) {
  dev_err(iss->dev, "ISP IPIPEIF pads links creation failed\n");
  return ret;
 }

 ret = omap4iss_resizer_create_links(iss);
 if (ret < 0) {
  dev_err(iss->dev, "ISP RESIZER pads links creation failed\n");
  return ret;
 }


 ret = media_create_pad_link(
   &iss->csi2a.subdev.entity, CSI2_PAD_SOURCE,
   &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &iss->csi2b.subdev.entity, CSI2_PAD_SOURCE,
   &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
   &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &iss->ipipeif.subdev.entity, IPIPEIF_PAD_SOURCE_VP,
   &iss->ipipe.subdev.entity, IPIPE_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &iss->ipipe.subdev.entity, IPIPE_PAD_SOURCE_VP,
   &iss->resizer.subdev.entity, RESIZER_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 return 0;
}
