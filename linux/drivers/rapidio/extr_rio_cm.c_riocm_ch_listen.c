
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rio_channel {int dummy; } ;


 int CHOP ;
 int EINVAL ;
 int RIO_CM_CHAN_BOUND ;
 int RIO_CM_LISTEN ;
 int riocm_cmp_exch (struct rio_channel*,int ,int ) ;
 int riocm_debug (int ,char*,int ) ;
 struct rio_channel* riocm_get_channel (int ) ;
 int riocm_put_channel (struct rio_channel*) ;

__attribute__((used)) static int riocm_ch_listen(u16 ch_id)
{
 struct rio_channel *ch = ((void*)0);
 int ret = 0;

 riocm_debug(CHOP, "(ch_%d)", ch_id);

 ch = riocm_get_channel(ch_id);
 if (!ch)
  return -EINVAL;
 if (!riocm_cmp_exch(ch, RIO_CM_CHAN_BOUND, RIO_CM_LISTEN))
  ret = -EINVAL;
 riocm_put_channel(ch);
 return ret;
}
