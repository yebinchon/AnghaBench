
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int val ;
typedef int u_int ;
typedef int ******** u8 ;
typedef int u32 ;
struct TYPE_3__ {int len; unsigned char* data; scalar_t__ user; } ;
typedef TYPE_1__ capiloaddatapart ;
typedef int avmcard ;


 int EFAULT ;
 scalar_t__ copy_from_user (int **********,unsigned char*,int) ;
 int memcpy (int **********,unsigned char*,int) ;
 int memset (int *********,int ,int) ;
 int queue_sendconfig (int *,int *********) ;
 int queue_sendconfigword (int *,int) ;

__attribute__((used)) static int c4_send_config(avmcard *card, capiloaddatapart *config)
{
 u8 val[4];
 unsigned char *dp;
 u_int left;
 int retval;

 if ((retval = queue_sendconfigword(card, 1)) != 0)
  return retval;
 if ((retval = queue_sendconfigword(card, config->len)) != 0)
  return retval;

 dp = config->data;
 left = config->len;
 while (left >= sizeof(u32)) {
  if (config->user) {
   if (copy_from_user(val, dp, sizeof(val)))
    return -EFAULT;
  } else {
   memcpy(val, dp, sizeof(val));
  }
  if ((retval = queue_sendconfig(card, val)) != 0)
   return retval;
  left -= sizeof(val);
  dp += sizeof(val);
 }
 if (left) {
  memset(val, 0, sizeof(val));
  if (config->user) {
   if (copy_from_user(&val, dp, left))
    return -EFAULT;
  } else {
   memcpy(&val, dp, left);
  }
  if ((retval = queue_sendconfig(card, val)) != 0)
   return retval;
 }

 return 0;
}
