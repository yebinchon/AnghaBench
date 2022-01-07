
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tb_xdp_error_response {int error; int hdr; } ;
struct tb_ctl {int dummy; } ;
typedef int res ;
typedef enum tb_xdp_error { ____Placeholder_tb_xdp_error } tb_xdp_error ;


 int ERROR_RESPONSE ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int __tb_xdomain_response (struct tb_ctl*,struct tb_xdp_error_response*,int,int ) ;
 int memset (struct tb_xdp_error_response*,int ,int) ;
 int tb_xdp_fill_header (int *,int ,int ,int ,int) ;

__attribute__((used)) static int tb_xdp_error_response(struct tb_ctl *ctl, u64 route, u8 sequence,
     enum tb_xdp_error error)
{
 struct tb_xdp_error_response res;

 memset(&res, 0, sizeof(res));
 tb_xdp_fill_header(&res.hdr, route, sequence, ERROR_RESPONSE,
      sizeof(res));
 res.error = error;

 return __tb_xdomain_response(ctl, &res, sizeof(res),
         TB_CFG_PKG_XDOMAIN_RESP);
}
