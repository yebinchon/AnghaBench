
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u8 ;
typedef int u64 ;
struct tb_xdp_uuid_response {int src_route_lo; int src_route_hi; int src_uuid; int hdr; } ;
struct tb_ctl {int dummy; } ;
typedef int res ;


 int TB_CFG_PKG_XDOMAIN_RESP ;
 int UUID_RESPONSE ;
 int __tb_xdomain_response (struct tb_ctl*,struct tb_xdp_uuid_response*,int,int ) ;
 int lower_32_bits (int ) ;
 int memset (struct tb_xdp_uuid_response*,int ,int) ;
 int tb_xdp_fill_header (int *,int ,int ,int ,int) ;
 int upper_32_bits (int ) ;
 int uuid_copy (int *,int const*) ;

__attribute__((used)) static int tb_xdp_uuid_response(struct tb_ctl *ctl, u64 route, u8 sequence,
    const uuid_t *uuid)
{
 struct tb_xdp_uuid_response res;

 memset(&res, 0, sizeof(res));
 tb_xdp_fill_header(&res.hdr, route, sequence, UUID_RESPONSE,
      sizeof(res));

 uuid_copy(&res.src_uuid, uuid);
 res.src_route_hi = upper_32_bits(route);
 res.src_route_lo = lower_32_bits(route);

 return __tb_xdomain_response(ctl, &res, sizeof(res),
         TB_CFG_PKG_XDOMAIN_RESP);
}
