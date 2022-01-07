
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wsm_buf {int dummy; } ;
struct cw1200_common {int dummy; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 scalar_t__ WSM_GET32 (struct wsm_buf*) ;
 scalar_t__ WSM_STATUS_SUCCESS ;
 int cw1200_scan_failed_cb (struct cw1200_common*) ;

__attribute__((used)) static int wsm_scan_started(struct cw1200_common *priv, void *arg,
       struct wsm_buf *buf)
{
 u32 status = WSM_GET32(buf);
 if (status != WSM_STATUS_SUCCESS) {
  cw1200_scan_failed_cb(priv);
  return -EINVAL;
 }
 return 0;

underflow:
 WARN_ON(1);
 return -EINVAL;
}
