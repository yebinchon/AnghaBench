
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_client {int dummy; } ;


 int bbc_i2c_readb (struct bbc_i2c_client*,char*,int) ;

int bbc_i2c_read_buf(struct bbc_i2c_client *client,
       char *buf, int len, int off)
{
 int ret = 0;

 while (len > 0) {
  ret = bbc_i2c_readb(client, buf, off);
  if (ret < 0)
   break;
  len--;
  buf++;
  off++;
 }

 return ret;
}
