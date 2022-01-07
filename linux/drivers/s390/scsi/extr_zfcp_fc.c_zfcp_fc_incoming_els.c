
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_2__ {unsigned int* data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;


 unsigned int ELS_LOGO ;
 unsigned int ELS_PLOGI ;
 unsigned int ELS_RSCN ;
 int zfcp_dbf_san_in_els (char*,struct zfcp_fsf_req*) ;
 int zfcp_fc_incoming_logo (struct zfcp_fsf_req*) ;
 int zfcp_fc_incoming_plogi (struct zfcp_fsf_req*) ;
 int zfcp_fc_incoming_rscn (struct zfcp_fsf_req*) ;

void zfcp_fc_incoming_els(struct zfcp_fsf_req *fsf_req)
{
 struct fsf_status_read_buffer *status_buffer =
  (struct fsf_status_read_buffer *) fsf_req->data;
 unsigned int els_type = status_buffer->payload.data[0];

 zfcp_dbf_san_in_els("fciels1", fsf_req);
 if (els_type == ELS_PLOGI)
  zfcp_fc_incoming_plogi(fsf_req);
 else if (els_type == ELS_LOGO)
  zfcp_fc_incoming_logo(fsf_req);
 else if (els_type == ELS_RSCN)
  zfcp_fc_incoming_rscn(fsf_req);
}
