
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* shutdown ) () ;} ;


 TYPE_1__* hmcdrv_ftp_funcs ;
 int hmcdrv_ftp_mutex ;
 scalar_t__ hmcdrv_ftp_refcnt ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 () ;

void hmcdrv_ftp_shutdown(void)
{
 mutex_lock(&hmcdrv_ftp_mutex);
 --hmcdrv_ftp_refcnt;

 if ((hmcdrv_ftp_refcnt == 0) && hmcdrv_ftp_funcs)
  hmcdrv_ftp_funcs->shutdown();

 mutex_unlock(&hmcdrv_ftp_mutex);
}
