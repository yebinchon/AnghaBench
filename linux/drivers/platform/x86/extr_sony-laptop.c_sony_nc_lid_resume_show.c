
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int attr; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {unsigned int status; TYPE_1__* attrs; } ;
struct TYPE_3__ {int attr; } ;


 int EINVAL ;
 unsigned int LID_RESUME_MAX ;
 unsigned int LID_RESUME_S5 ;
 int PAGE_SIZE ;
 TYPE_2__* lid_ctl ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t sony_nc_lid_resume_show(struct device *dev,
     struct device_attribute *attr,
     char *buffer)
{
 unsigned int pos = LID_RESUME_S5;

 while (pos < LID_RESUME_MAX) {
  if (&lid_ctl->attrs[pos].attr == &attr->attr)
   return snprintf(buffer, PAGE_SIZE, "%d\n",
     (lid_ctl->status >> pos) & 0x01);
  pos++;
 }
 return -EINVAL;
}
