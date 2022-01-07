
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 int EINVAL ;
 int cumanascsi_2_terminator_ctl (struct Scsi_Host*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
cumanascsi_2_set_proc_info(struct Scsi_Host *host, char *buffer, int length)
{
 int ret = length;

 if (length >= 11 && strncmp(buffer, "CUMANASCSI2", 11) == 0) {
  buffer += 11;
  length -= 11;

  if (length >= 5 && strncmp(buffer, "term=", 5) == 0) {
   if (buffer[5] == '1')
    cumanascsi_2_terminator_ctl(host, 1);
   else if (buffer[5] == '0')
    cumanascsi_2_terminator_ctl(host, 0);
   else
    ret = -EINVAL;
  } else
   ret = -EINVAL;
 } else
  ret = -EINVAL;

 return ret;
}
