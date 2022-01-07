
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_req {struct fsf_status_read_buffer* data; } ;
struct fsf_status_read_buffer {int status_subtype; int payload; } ;
struct fsf_link_down_info {int dummy; } ;





 int zfcp_fsf_link_down_info_eval (struct zfcp_fsf_req*,struct fsf_link_down_info*) ;

__attribute__((used)) static void zfcp_fsf_status_read_link_down(struct zfcp_fsf_req *req)
{
 struct fsf_status_read_buffer *sr_buf = req->data;
 struct fsf_link_down_info *ldi =
  (struct fsf_link_down_info *) &sr_buf->payload;

 switch (sr_buf->status_subtype) {
 case 128:
 case 130:
  zfcp_fsf_link_down_info_eval(req, ldi);
  break;
 case 129:
  zfcp_fsf_link_down_info_eval(req, ((void*)0));
 }
}
