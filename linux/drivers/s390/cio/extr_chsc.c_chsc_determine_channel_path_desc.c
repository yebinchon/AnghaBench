
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_scpd {int m; int c; int fmt; int rfmt; TYPE_2__ response; int last_chpid; int first_chpid; int cssid; TYPE_1__ request; } ;
struct chp_id {int id; int cssid; } ;
struct TYPE_6__ {int util_str; int cib; int fcs; } ;


 int CIO_CRW_EVENT (int,char*,int ) ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int PAGE_SIZE ;
 int chsc (struct chsc_scpd*) ;
 int chsc_error_from_response (int ) ;
 TYPE_3__ css_general_characteristics ;
 int memset (void*,int ,int ) ;

int chsc_determine_channel_path_desc(struct chp_id chpid, int fmt, int rfmt,
         int c, int m, void *page)
{
 struct chsc_scpd *scpd_area;
 int ccode, ret;

 if ((rfmt == 1 || rfmt == 0) && c == 1 &&
     !css_general_characteristics.fcs)
  return -EINVAL;
 if ((rfmt == 2) && !css_general_characteristics.cib)
  return -EINVAL;
 if ((rfmt == 3) && !css_general_characteristics.util_str)
  return -EINVAL;

 memset(page, 0, PAGE_SIZE);
 scpd_area = page;
 scpd_area->request.length = 0x0010;
 scpd_area->request.code = 0x0002;
 scpd_area->cssid = chpid.cssid;
 scpd_area->first_chpid = chpid.id;
 scpd_area->last_chpid = chpid.id;
 scpd_area->m = m;
 scpd_area->c = c;
 scpd_area->fmt = fmt;
 scpd_area->rfmt = rfmt;

 ccode = chsc(scpd_area);
 if (ccode > 0)
  return (ccode == 3) ? -ENODEV : -EBUSY;

 ret = chsc_error_from_response(scpd_area->response.code);
 if (ret)
  CIO_CRW_EVENT(2, "chsc: scpd failed (rc=%04x)\n",
         scpd_area->response.code);
 return ret;
}
