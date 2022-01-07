
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucsi_control {int dummy; } ;
struct ucsi {int ppm_lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ucsi_run_command (struct ucsi*,struct ucsi_control*,void*,size_t) ;

int ucsi_send_command(struct ucsi *ucsi, struct ucsi_control *ctrl,
        void *retval, size_t size)
{
 int ret;

 mutex_lock(&ucsi->ppm_lock);
 ret = ucsi_run_command(ucsi, ctrl, retval, size);
 mutex_unlock(&ucsi->ppm_lock);

 return ret;
}
