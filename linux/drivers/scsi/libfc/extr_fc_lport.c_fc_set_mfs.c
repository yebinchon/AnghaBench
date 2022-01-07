
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fc_lport {unsigned int mfs; int lp_mutex; } ;
struct fc_frame_header {int dummy; } ;


 int EINVAL ;
 int FC_MAX_FRAME ;
 int FC_MIN_MAX_FRAME ;
 int fc_lport_enter_reset (struct fc_lport*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fc_set_mfs(struct fc_lport *lport, u32 mfs)
{
 unsigned int old_mfs;
 int rc = -EINVAL;

 mutex_lock(&lport->lp_mutex);

 old_mfs = lport->mfs;

 if (mfs >= FC_MIN_MAX_FRAME) {
  mfs &= ~3;
  if (mfs > FC_MAX_FRAME)
   mfs = FC_MAX_FRAME;
  mfs -= sizeof(struct fc_frame_header);
  lport->mfs = mfs;
  rc = 0;
 }

 if (!rc && mfs < old_mfs)
  fc_lport_enter_reset(lport);

 mutex_unlock(&lport->lp_mutex);

 return rc;
}
