
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_join_complete {int status; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 int WSM_GET32 (struct wsm_buf*) ;
 int cw1200_join_complete_cb (struct cw1200_common*,struct wsm_join_complete*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int wsm_join_complete_indication(struct cw1200_common *priv,
     struct wsm_buf *buf)
{
 struct wsm_join_complete arg;
 arg.status = WSM_GET32(buf);
 pr_debug("[WSM] Join complete indication, status: %d\n", arg.status);
 cw1200_join_complete_cb(priv, &arg);

 return 0;

underflow:
 return -EINVAL;
}
