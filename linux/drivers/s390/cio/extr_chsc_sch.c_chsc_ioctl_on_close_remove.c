
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dbf ;


 int CHSC_LOG (int ,char*) ;
 int ENOENT ;
 int free_page (unsigned long) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * on_close_chsc_area ;
 int on_close_mutex ;
 int * on_close_request ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int chsc_ioctl_on_close_remove(void)
{
 char dbf[13];
 int ret;

 mutex_lock(&on_close_mutex);
 if (!on_close_chsc_area) {
  ret = -ENOENT;
  goto out_unlock;
 }
 free_page((unsigned long)on_close_chsc_area);
 on_close_chsc_area = ((void*)0);
 kfree(on_close_request);
 on_close_request = ((void*)0);
 ret = 0;
out_unlock:
 mutex_unlock(&on_close_mutex);
 snprintf(dbf, sizeof(dbf), "ocrret:%d", ret);
 CHSC_LOG(0, dbf);
 return ret;
}
