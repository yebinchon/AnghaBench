
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_media_fim {scalar_t__ num_skip; int sd; int icap_first_event; int enabled; } ;


 int IMX_MEDIA_EOF_TIMEOUT ;
 int msecs_to_jiffies (int ) ;
 int v4l2_warn (int ,char*) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static void fim_acquire_first_ts(struct imx_media_fim *fim)
{
 unsigned long ret;

 if (!fim->enabled || fim->num_skip > 0)
  return;

 ret = wait_for_completion_timeout(
  &fim->icap_first_event,
  msecs_to_jiffies(IMX_MEDIA_EOF_TIMEOUT));
 if (ret == 0)
  v4l2_warn(fim->sd, "wait first icap event timeout\n");
}
