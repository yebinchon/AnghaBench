
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_request {int timedout; int firmware_id; int release_timeout_j; struct fw_download* fw_download; } ;
struct fw_download {int parent; } ;


 int ETIMEDOUT ;
 int dev_err (int ,char*,int ) ;
 int free_firmware (struct fw_download*,struct fw_request*) ;
 int jiffies ;
 scalar_t__ time_before (int ,int ) ;

__attribute__((used)) static int exceeds_release_timeout(struct fw_request *fw_req)
{
 struct fw_download *fw_download = fw_req->fw_download;

 if (time_before(jiffies, fw_req->release_timeout_j))
  return 0;

 dev_err(fw_download->parent,
  "Firmware download didn't finish in time, abort: %d\n",
  fw_req->firmware_id);

 fw_req->timedout = 1;
 free_firmware(fw_download, fw_req);

 return -ETIMEDOUT;
}
