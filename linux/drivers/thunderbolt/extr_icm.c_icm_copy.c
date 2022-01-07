
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_cfg_request {size_t npackets; size_t response_size; scalar_t__ response; } ;
struct icm_pkg_header {size_t packet_id; int total_packets; } ;
struct ctl_pkg {struct icm_pkg_header* buffer; } ;


 int memcpy (scalar_t__,struct icm_pkg_header*,size_t) ;

__attribute__((used)) static bool icm_copy(struct tb_cfg_request *req, const struct ctl_pkg *pkg)
{
 const struct icm_pkg_header *hdr = pkg->buffer;

 if (hdr->packet_id < req->npackets) {
  size_t offset = hdr->packet_id * req->response_size;

  memcpy(req->response + offset, pkg->buffer, req->response_size);
 }

 return hdr->packet_id == hdr->total_packets - 1;
}
