
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct subchannel_id {int cssid; int sch_no; int ssid; int m; } ;
struct TYPE_4__ {int code; } ;
struct chsc_brinfo_resume_token {int dummy; } ;
struct TYPE_3__ {int length; int code; } ;
struct chsc_pnso_area {int n; TYPE_2__ response; struct chsc_brinfo_resume_token resume_token; scalar_t__ oc; int cssid; int sch; int ssid; int m; TYPE_1__ request; } ;


 int EIO ;
 scalar_t__ chsc (struct chsc_pnso_area*) ;
 int chsc_error_from_response (int ) ;
 int memset (struct chsc_pnso_area*,int ,int) ;

int chsc_pnso_brinfo(struct subchannel_id schid,
  struct chsc_pnso_area *brinfo_area,
  struct chsc_brinfo_resume_token resume_token,
  int cnc)
{
 memset(brinfo_area, 0, sizeof(*brinfo_area));
 brinfo_area->request.length = 0x0030;
 brinfo_area->request.code = 0x003d;
 brinfo_area->m = schid.m;
 brinfo_area->ssid = schid.ssid;
 brinfo_area->sch = schid.sch_no;
 brinfo_area->cssid = schid.cssid;
 brinfo_area->oc = 0;
 brinfo_area->resume_token = resume_token;
 brinfo_area->n = (cnc != 0);
 if (chsc(brinfo_area))
  return -EIO;
 return chsc_error_from_response(brinfo_area->response.code);
}
