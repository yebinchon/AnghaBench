
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int kfree (int *) ;
 int memcpy (int *,int *,scalar_t__) ;
 int * rtw_malloc (scalar_t__) ;

void rtw_buf_update(u8 **buf, u32 *buf_len, u8 *src, u32 src_len)
{
 u32 ori_len = 0, dup_len = 0;
 u8 *ori = ((void*)0);
 u8 *dup = ((void*)0);

 if (!buf || !buf_len)
  return;

 if (!src || !src_len)
  goto keep_ori;


 dup = rtw_malloc(src_len);
 if (dup) {
  dup_len = src_len;
  memcpy(dup, src, dup_len);
 }

keep_ori:
 ori = *buf;
 ori_len = *buf_len;


 *buf_len = 0;
 *buf = dup;
 *buf_len = dup_len;


 if (ori && ori_len > 0)
  kfree(ori);
}
