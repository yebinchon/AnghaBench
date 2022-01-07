
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct v4l2_subdev {int entity; struct iss_v4l2_subdevs_group* host_priv; } ;
struct media_entity {int dummy; } ;
struct iss_v4l2_subdevs_group {int interface; scalar_t__ subdevs; } ;
struct iss_platform_data {struct iss_v4l2_subdevs_group* subdevs; } ;
struct TYPE_11__ {TYPE_9__* mdev; } ;
struct TYPE_10__ {struct media_entity entity; } ;
struct TYPE_12__ {TYPE_1__ subdev; } ;
struct TYPE_13__ {int * ops; int hw_revision; int model; int dev; } ;
struct iss_device {TYPE_2__ v4l2_dev; int dev; TYPE_7__ csi2b; TYPE_7__ csi2a; int resizer; int ipipe; int ipipeif; TYPE_9__ media_dev; int revision; struct iss_platform_data* pdata; } ;


 unsigned int CSI2_PAD_SINK ;
 int EINVAL ;


 unsigned int MEDIA_LNK_FL_ENABLED ;
 unsigned int MEDIA_LNK_FL_IMMUTABLE ;
 int dev_err (int ,char*,int) ;
 int iss_media_ops ;
 struct v4l2_subdev* iss_register_subdev_group (struct iss_device*,scalar_t__) ;
 int iss_unregister_entities (struct iss_device*) ;
 int media_create_pad_link (int *,int ,struct media_entity*,unsigned int,unsigned int) ;
 int media_device_register (TYPE_9__*) ;
 int omap4iss_csi2_register_entities (TYPE_7__*,TYPE_2__*) ;
 int omap4iss_ipipe_register_entities (int *,TYPE_2__*) ;
 int omap4iss_ipipeif_register_entities (int *,TYPE_2__*) ;
 int omap4iss_resizer_register_entities (int *,TYPE_2__*) ;
 int strscpy (int ,char*,int) ;
 int v4l2_device_register (int ,TYPE_2__*) ;
 int v4l2_device_register_subdev_nodes (TYPE_2__*) ;

__attribute__((used)) static int iss_register_entities(struct iss_device *iss)
{
 struct iss_platform_data *pdata = iss->pdata;
 struct iss_v4l2_subdevs_group *subdevs;
 int ret;

 iss->media_dev.dev = iss->dev;
 strscpy(iss->media_dev.model, "TI OMAP4 ISS",
  sizeof(iss->media_dev.model));
 iss->media_dev.hw_revision = iss->revision;
 iss->media_dev.ops = &iss_media_ops;
 ret = media_device_register(&iss->media_dev);
 if (ret < 0) {
  dev_err(iss->dev, "Media device registration failed (%d)\n",
   ret);
  return ret;
 }

 iss->v4l2_dev.mdev = &iss->media_dev;
 ret = v4l2_device_register(iss->dev, &iss->v4l2_dev);
 if (ret < 0) {
  dev_err(iss->dev, "V4L2 device registration failed (%d)\n",
   ret);
  goto done;
 }


 ret = omap4iss_csi2_register_entities(&iss->csi2a, &iss->v4l2_dev);
 if (ret < 0)
  goto done;

 ret = omap4iss_csi2_register_entities(&iss->csi2b, &iss->v4l2_dev);
 if (ret < 0)
  goto done;

 ret = omap4iss_ipipeif_register_entities(&iss->ipipeif, &iss->v4l2_dev);
 if (ret < 0)
  goto done;

 ret = omap4iss_ipipe_register_entities(&iss->ipipe, &iss->v4l2_dev);
 if (ret < 0)
  goto done;

 ret = omap4iss_resizer_register_entities(&iss->resizer, &iss->v4l2_dev);
 if (ret < 0)
  goto done;


 for (subdevs = pdata->subdevs; subdevs && subdevs->subdevs; ++subdevs) {
  struct v4l2_subdev *sensor;
  struct media_entity *input;
  unsigned int flags;
  unsigned int pad;

  sensor = iss_register_subdev_group(iss, subdevs->subdevs);
  if (!sensor)
   continue;

  sensor->host_priv = subdevs;





  switch (subdevs->interface) {
  case 129:
   input = &iss->csi2a.subdev.entity;
   pad = CSI2_PAD_SINK;
   flags = MEDIA_LNK_FL_IMMUTABLE
         | MEDIA_LNK_FL_ENABLED;
   break;

  case 128:
   input = &iss->csi2b.subdev.entity;
   pad = CSI2_PAD_SINK;
   flags = MEDIA_LNK_FL_IMMUTABLE
         | MEDIA_LNK_FL_ENABLED;
   break;

  default:
   dev_err(iss->dev, "invalid interface type %u\n",
    subdevs->interface);
   ret = -EINVAL;
   goto done;
  }

  ret = media_create_pad_link(&sensor->entity, 0, input, pad,
         flags);
  if (ret < 0)
   goto done;
 }

 ret = v4l2_device_register_subdev_nodes(&iss->v4l2_dev);

done:
 if (ret < 0)
  iss_unregister_entities(iss);

 return ret;
}
