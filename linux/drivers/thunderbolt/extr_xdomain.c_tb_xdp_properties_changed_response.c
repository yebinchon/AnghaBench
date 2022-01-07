
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct tb_xdp_properties_changed_response {int hdr; } ;
struct tb_ctl {int dummy; } ;
typedef int res ;


 int PROPERTIES_CHANGED_RESPONSE ;
 int TB_CFG_PKG_XDOMAIN_RESP ;
 int __tb_xdomain_response (struct tb_ctl*,struct tb_xdp_properties_changed_response*,int,int ) ;
 int memset (struct tb_xdp_properties_changed_response*,int ,int) ;
 int tb_xdp_fill_header (int *,int ,int ,int ,int) ;

__attribute__((used)) static int
tb_xdp_properties_changed_response(struct tb_ctl *ctl, u64 route, u8 sequence)
{
 struct tb_xdp_properties_changed_response res;

 memset(&res, 0, sizeof(res));
 tb_xdp_fill_header(&res.hdr, route, sequence,
      PROPERTIES_CHANGED_RESPONSE, sizeof(res));
 return __tb_xdomain_response(ctl, &res, sizeof(res),
         TB_CFG_PKG_XDOMAIN_RESP);
}
