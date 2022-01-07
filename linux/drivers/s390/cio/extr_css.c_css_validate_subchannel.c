
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct subchannel_id {int sch_no; int ssid; } ;
struct TYPE_2__ {int st; int dev; } ;
struct schib {TYPE_1__ pmcw; } ;


 int CIO_MSG_EVENT (int,char*,int ,int ,...) ;
 int ENODEV ;


 int css_sch_is_valid (struct schib*) ;
 int is_blacklisted (int ,int ) ;

__attribute__((used)) static int css_validate_subchannel(struct subchannel_id schid,
       struct schib *schib)
{
 int err;

 switch (schib->pmcw.st) {
 case 129:
 case 128:
  if (!css_sch_is_valid(schib))
   err = -ENODEV;
  else if (is_blacklisted(schid.ssid, schib->pmcw.dev)) {
   CIO_MSG_EVENT(6, "Blacklisted device detected "
          "at devno %04X, subchannel set %x\n",
          schib->pmcw.dev, schid.ssid);
   err = -ENODEV;
  } else
   err = 0;
  break;
 default:
  err = 0;
 }
 if (err)
  goto out;

 CIO_MSG_EVENT(4, "Subchannel 0.%x.%04x reports subchannel type %04X\n",
        schid.ssid, schid.sch_no, schib->pmcw.st);
out:
 return err;
}
