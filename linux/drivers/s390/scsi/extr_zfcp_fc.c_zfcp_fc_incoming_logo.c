
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_fsf_req {scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ data; } ;
struct fsf_status_read_buffer {TYPE_1__ payload; } ;
struct fc_els_logo {int fl_n_port_wwn; } ;


 int be64_to_cpu (int ) ;
 int zfcp_fc_incoming_wwpn (struct zfcp_fsf_req*,int ) ;

__attribute__((used)) static void zfcp_fc_incoming_logo(struct zfcp_fsf_req *req)
{
 struct fsf_status_read_buffer *status_buffer =
  (struct fsf_status_read_buffer *)req->data;
 struct fc_els_logo *logo =
  (struct fc_els_logo *) status_buffer->payload.data;

 zfcp_fc_incoming_wwpn(req, be64_to_cpu(logo->fl_n_port_wwn));
}
