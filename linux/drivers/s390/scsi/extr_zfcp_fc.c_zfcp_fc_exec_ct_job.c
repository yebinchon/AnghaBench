
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_fsf_ct_els {int handler; } ;
struct zfcp_fc_wka_port {int dummy; } ;
struct zfcp_adapter {int dummy; } ;
struct bsg_job {int timeout; struct zfcp_fsf_ct_els* dd_data; } ;


 int EINVAL ;
 int HZ ;
 int zfcp_fc_ct_job_handler ;
 struct zfcp_fc_wka_port* zfcp_fc_job_wka_port (struct bsg_job*) ;
 int zfcp_fc_wka_port_get (struct zfcp_fc_wka_port*) ;
 int zfcp_fc_wka_port_put (struct zfcp_fc_wka_port*) ;
 int zfcp_fsf_send_ct (struct zfcp_fc_wka_port*,struct zfcp_fsf_ct_els*,int *,int) ;

__attribute__((used)) static int zfcp_fc_exec_ct_job(struct bsg_job *job,
          struct zfcp_adapter *adapter)
{
 int ret;
 struct zfcp_fsf_ct_els *ct = job->dd_data;
 struct zfcp_fc_wka_port *wka_port;

 wka_port = zfcp_fc_job_wka_port(job);
 if (!wka_port)
  return -EINVAL;

 ret = zfcp_fc_wka_port_get(wka_port);
 if (ret)
  return ret;

 ct->handler = zfcp_fc_ct_job_handler;
 ret = zfcp_fsf_send_ct(wka_port, ct, ((void*)0), job->timeout / HZ);
 if (ret)
  zfcp_fc_wka_port_put(wka_port);

 return ret;
}
