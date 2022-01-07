
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_scan_complete {void* num_channels; void* psm; int status; } ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 int WSM_GET32 (struct wsm_buf*) ;
 void* WSM_GET8 (struct wsm_buf*) ;
 int cw1200_scan_complete_cb (struct cw1200_common*,struct wsm_scan_complete*) ;

__attribute__((used)) static int wsm_scan_complete_indication(struct cw1200_common *priv,
     struct wsm_buf *buf)
{
 struct wsm_scan_complete arg;
 arg.status = WSM_GET32(buf);
 arg.psm = WSM_GET8(buf);
 arg.num_channels = WSM_GET8(buf);
 cw1200_scan_complete_cb(priv, &arg);

 return 0;

underflow:
 return -EINVAL;
}
