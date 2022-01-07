
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsg_job {int dummy; } ;


 int EAGAIN ;

int zfcp_fc_timeout_bsg_job(struct bsg_job *job)
{

 return -EAGAIN;
}
