
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CHP_INFO_UPDATE_INTERVAL ;
 int chp_info ;
 scalar_t__ chp_info_expires ;
 int info_lock ;
 scalar_t__ jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sclp_chp_read_info (int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int info_update(void)
{
 int rc;

 mutex_lock(&info_lock);
 rc = 0;
 if (time_after(jiffies, chp_info_expires)) {

  rc = sclp_chp_read_info(&chp_info);
  chp_info_expires = jiffies + CHP_INFO_UPDATE_INTERVAL ;
 }
 mutex_unlock(&info_lock);

 return rc;
}
