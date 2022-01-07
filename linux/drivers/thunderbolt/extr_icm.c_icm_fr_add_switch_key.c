
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_switch {int key; int connection_key; int connection_id; int uuid; } ;
struct tb {int dummy; } ;
struct TYPE_2__ {int flags; int code; } ;
struct icm_fr_pkg_add_device_key_response {TYPE_1__ hdr; int * key; int connection_key; int connection_id; int ep_uuid; } ;
struct icm_fr_pkg_add_device_key {TYPE_1__ hdr; int * key; int connection_key; int connection_id; int ep_uuid; } ;
typedef int request ;
typedef int reply ;


 int EIO ;
 int ICM_ADD_DEVICE_KEY ;
 int ICM_FLAGS_ERROR ;
 int ICM_TIMEOUT ;
 int TB_SWITCH_KEY_SIZE ;
 int icm_request (struct tb*,struct icm_fr_pkg_add_device_key_response*,int,struct icm_fr_pkg_add_device_key_response*,int,int,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (struct icm_fr_pkg_add_device_key_response*,int ,int) ;
 int tb_warn (struct tb*,char*) ;

__attribute__((used)) static int icm_fr_add_switch_key(struct tb *tb, struct tb_switch *sw)
{
 struct icm_fr_pkg_add_device_key request;
 struct icm_fr_pkg_add_device_key_response reply;
 int ret;

 memset(&request, 0, sizeof(request));
 memcpy(&request.ep_uuid, sw->uuid, sizeof(request.ep_uuid));
 request.hdr.code = ICM_ADD_DEVICE_KEY;
 request.connection_id = sw->connection_id;
 request.connection_key = sw->connection_key;
 memcpy(request.key, sw->key, TB_SWITCH_KEY_SIZE);

 memset(&reply, 0, sizeof(reply));
 ret = icm_request(tb, &request, sizeof(request), &reply, sizeof(reply),
     1, ICM_TIMEOUT);
 if (ret)
  return ret;

 if (reply.hdr.flags & ICM_FLAGS_ERROR) {
  tb_warn(tb, "Adding key to switch failed\n");
  return -EIO;
 }

 return 0;
}
