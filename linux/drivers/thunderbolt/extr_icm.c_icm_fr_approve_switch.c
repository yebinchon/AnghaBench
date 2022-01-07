
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_switch {int connection_key; int connection_id; int uuid; } ;
struct tb {int dummy; } ;
struct TYPE_2__ {int flags; int code; } ;
struct icm_fr_pkg_approve_device {TYPE_1__ hdr; int connection_key; int connection_id; int ep_uuid; } ;
typedef int request ;
typedef int reply ;


 int EIO ;
 int ICM_APPROVE_DEVICE ;
 int ICM_APPROVE_TIMEOUT ;
 int ICM_FLAGS_ERROR ;
 int icm_request (struct tb*,struct icm_fr_pkg_approve_device*,int,struct icm_fr_pkg_approve_device*,int,int,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (struct icm_fr_pkg_approve_device*,int ,int) ;
 int tb_warn (struct tb*,char*) ;

__attribute__((used)) static int icm_fr_approve_switch(struct tb *tb, struct tb_switch *sw)
{
 struct icm_fr_pkg_approve_device request;
 struct icm_fr_pkg_approve_device reply;
 int ret;

 memset(&request, 0, sizeof(request));
 memcpy(&request.ep_uuid, sw->uuid, sizeof(request.ep_uuid));
 request.hdr.code = ICM_APPROVE_DEVICE;
 request.connection_id = sw->connection_id;
 request.connection_key = sw->connection_key;

 memset(&reply, 0, sizeof(reply));

 ret = icm_request(tb, &request, sizeof(request), &reply, sizeof(reply),
     1, ICM_APPROVE_TIMEOUT);
 if (ret)
  return ret;

 if (reply.hdr.flags & ICM_FLAGS_ERROR) {
  tb_warn(tb, "PCIe tunnel creation failed\n");
  return -EIO;
 }

 return 0;
}
