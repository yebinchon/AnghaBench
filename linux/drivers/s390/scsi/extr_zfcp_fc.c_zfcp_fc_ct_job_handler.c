
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fc_wka_port {int dummy; } ;
struct bsg_job {int dummy; } ;


 int zfcp_fc_ct_els_job_handler (void*) ;
 struct zfcp_fc_wka_port* zfcp_fc_job_wka_port (struct bsg_job*) ;
 int zfcp_fc_wka_port_put (struct zfcp_fc_wka_port*) ;

__attribute__((used)) static void zfcp_fc_ct_job_handler(void *data)
{
 struct bsg_job *job = data;
 struct zfcp_fc_wka_port *wka_port;

 wka_port = zfcp_fc_job_wka_port(job);
 zfcp_fc_wka_port_put(wka_port);

 zfcp_fc_ct_els_job_handler(data);
}
