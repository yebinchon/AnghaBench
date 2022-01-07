
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_ccw_req {int irb; int intrc; } ;


 int ENODEV ;
 int ENOLINK ;
 int EPERM ;
 char* dasd_get_sense (int *) ;

__attribute__((used)) static int
suborder_not_supported(struct dasd_ccw_req *cqr)
{
 char *sense;
 char reason;
 char msg_format;
 char msg_no;






 if (cqr->intrc == -ENODEV)
  return 1;

 if (cqr->intrc == -ENOLINK)
  return 1;

 if (cqr->intrc == -EPERM)
  return 1;

 sense = dasd_get_sense(&cqr->irb);
 if (!sense)
  return 0;

 reason = sense[0];
 msg_format = (sense[7] & 0xF0);
 msg_no = (sense[7] & 0x0F);


 if ((reason == 0x80) && (msg_format == 0x00) && (msg_no == 0x04))
  return 1;

 return 0;
}
