
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int route_hi; int route_lo; } ;
struct tb_switch {int key; int connection_id; TYPE_1__ config; int uuid; } ;
struct tb {int dummy; } ;
struct TYPE_4__ {int flags; int code; } ;
struct icm_tr_pkg_add_device_key_response {TYPE_2__ hdr; int * key; int connection_id; int route_hi; int route_lo; int ep_uuid; } ;
struct icm_tr_pkg_add_device_key {TYPE_2__ hdr; int * key; int connection_id; int route_hi; int route_lo; int ep_uuid; } ;
typedef int request ;
typedef int reply ;


 int EIO ;
 int ICM_ADD_DEVICE_KEY ;
 int ICM_FLAGS_ERROR ;
 int ICM_TIMEOUT ;
 int TB_SWITCH_KEY_SIZE ;
 int icm_request (struct tb*,struct icm_tr_pkg_add_device_key_response*,int,struct icm_tr_pkg_add_device_key_response*,int,int,int ) ;
 int memcpy (int *,int ,int) ;
 int memset (struct icm_tr_pkg_add_device_key_response*,int ,int) ;
 int tb_warn (struct tb*,char*) ;

__attribute__((used)) static int icm_tr_add_switch_key(struct tb *tb, struct tb_switch *sw)
{
 struct icm_tr_pkg_add_device_key_response reply;
 struct icm_tr_pkg_add_device_key request;
 int ret;

 memset(&request, 0, sizeof(request));
 memcpy(&request.ep_uuid, sw->uuid, sizeof(request.ep_uuid));
 request.hdr.code = ICM_ADD_DEVICE_KEY;
 request.route_lo = sw->config.route_lo;
 request.route_hi = sw->config.route_hi;
 request.connection_id = sw->connection_id;
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
