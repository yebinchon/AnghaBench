
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int EXTENDED_MESSAGE ;

__attribute__((used)) static inline u8 msgin_completed(u8 * msgbuf, u32 len)
{
 if (*msgbuf == EXTENDED_MESSAGE) {
  if (len < 2)
   return 0;
  if (len < msgbuf[1] + 2)
   return 0;
 } else if (*msgbuf >= 0x20 && *msgbuf <= 0x2f)
  if (len < 2)
   return 0;
 return 1;
}
