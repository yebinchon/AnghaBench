
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;



__attribute__((used)) static long goldfish_audio_ioctl(struct file *fp, unsigned int cmd,
     unsigned long arg)
{

 if (cmd == 315)
  return -1;

 return 0;
}
