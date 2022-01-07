
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u64 ;
struct tb_xdp_uuid_response {int src_uuid; int hdr; } ;
struct tb_xdp_uuid {int src_uuid; int hdr; } ;
struct tb_ctl {int dummy; } ;
typedef int res ;
typedef int req ;


 int TB_CFG_PKG_XDOMAIN_REQ ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int UUID_REQUEST ;
 int XDOMAIN_DEFAULT_TIMEOUT ;
 int __tb_xdomain_request (struct tb_ctl*,struct tb_xdp_uuid_response*,int,int ,struct tb_xdp_uuid_response*,int,int ,int ) ;
 int memset (struct tb_xdp_uuid_response*,int ,int) ;
 int tb_xdp_fill_header (int *,int ,int,int ,int) ;
 int tb_xdp_handle_error (int *) ;
 int uuid_copy (int *,int *) ;

__attribute__((used)) static int tb_xdp_uuid_request(struct tb_ctl *ctl, u64 route, int retry,
          uuid_t *uuid)
{
 struct tb_xdp_uuid_response res;
 struct tb_xdp_uuid req;
 int ret;

 memset(&req, 0, sizeof(req));
 tb_xdp_fill_header(&req.hdr, route, retry % 4, UUID_REQUEST,
      sizeof(req));

 memset(&res, 0, sizeof(res));
 ret = __tb_xdomain_request(ctl, &req, sizeof(req),
       TB_CFG_PKG_XDOMAIN_REQ, &res, sizeof(res),
       TB_CFG_PKG_XDOMAIN_RESP,
       XDOMAIN_DEFAULT_TIMEOUT);
 if (ret)
  return ret;

 ret = tb_xdp_handle_error(&res.hdr);
 if (ret)
  return ret;

 uuid_copy(uuid, &res.src_uuid);
 return 0;
}
