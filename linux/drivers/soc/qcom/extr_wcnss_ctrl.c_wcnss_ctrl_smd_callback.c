
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wcnss_version_resp {int revision; int version; int minor; int major; } ;
struct wcnss_msg_hdr {int type; } ;
struct wcnss_download_nv_resp {int status; } ;
struct wcnss_ctrl {int dev; int cbc; int ack; int ack_status; } ;
struct rpmsg_device {int dev; } ;





 int complete (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 struct wcnss_ctrl* dev_get_drvdata (int *) ;
 int dev_info (int ,char*,int,...) ;

__attribute__((used)) static int wcnss_ctrl_smd_callback(struct rpmsg_device *rpdev,
       void *data,
       int count,
       void *priv,
       u32 addr)
{
 struct wcnss_ctrl *wcnss = dev_get_drvdata(&rpdev->dev);
 const struct wcnss_download_nv_resp *nvresp;
 const struct wcnss_version_resp *version;
 const struct wcnss_msg_hdr *hdr = data;

 switch (hdr->type) {
 case 128:
  if (count != sizeof(*version)) {
   dev_err(wcnss->dev,
    "invalid size of version response\n");
   break;
  }

  version = data;
  dev_info(wcnss->dev, "WCNSS Version %d.%d %d.%d\n",
    version->major, version->minor,
    version->version, version->revision);

  complete(&wcnss->ack);
  break;
 case 129:
  if (count != sizeof(*nvresp)) {
   dev_err(wcnss->dev,
    "invalid size of download response\n");
   break;
  }

  nvresp = data;
  wcnss->ack_status = nvresp->status;
  complete(&wcnss->ack);
  break;
 case 130:
  dev_dbg(wcnss->dev, "cold boot complete\n");
  complete(&wcnss->cbc);
  break;
 default:
  dev_info(wcnss->dev, "unknown message type %d\n", hdr->type);
  break;
 }

 return 0;
}
