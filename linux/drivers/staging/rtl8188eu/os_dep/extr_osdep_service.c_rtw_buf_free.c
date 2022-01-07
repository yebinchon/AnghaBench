
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 int kfree (int *) ;

void rtw_buf_free(u8 **buf, u32 *buf_len)
{
 *buf_len = 0;
 kfree(*buf);
 *buf = ((void*)0);
}
