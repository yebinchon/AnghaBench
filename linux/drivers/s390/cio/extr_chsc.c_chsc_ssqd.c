
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {int ssid; int sch_no; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_ssqd_area {TYPE_1__ response; int ssid; int last_sch; int first_sch; TYPE_2__ request; } ;


 int EIO ;
 scalar_t__ chsc (struct chsc_ssqd_area*) ;
 int chsc_error_from_response (int ) ;
 int memset (struct chsc_ssqd_area*,int ,int) ;

int chsc_ssqd(struct subchannel_id schid, struct chsc_ssqd_area *ssqd)
{
 memset(ssqd, 0, sizeof(*ssqd));
 ssqd->request.length = 0x0010;
 ssqd->request.code = 0x0024;
 ssqd->first_sch = schid.sch_no;
 ssqd->last_sch = schid.sch_no;
 ssqd->ssid = schid.ssid;

 if (chsc(ssqd))
  return -EIO;

 return chsc_error_from_response(ssqd->response.code);
}
