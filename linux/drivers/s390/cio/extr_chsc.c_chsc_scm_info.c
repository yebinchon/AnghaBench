
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {int length; int code; } ;
struct chsc_scm_info {TYPE_1__ response; int reqtok; TYPE_2__ request; } ;


 int CIO_MSG_EVENT (int,char*,int ) ;
 int EBUSY ;
 int ENODEV ;
 int chsc (struct chsc_scm_info*) ;
 int chsc_error_from_response (int ) ;
 int memset (struct chsc_scm_info*,int ,int) ;

int chsc_scm_info(struct chsc_scm_info *scm_area, u64 token)
{
 int ccode, ret;

 memset(scm_area, 0, sizeof(*scm_area));
 scm_area->request.length = 0x0020;
 scm_area->request.code = 0x004C;
 scm_area->reqtok = token;

 ccode = chsc(scm_area);
 if (ccode > 0) {
  ret = (ccode == 3) ? -ENODEV : -EBUSY;
  goto out;
 }
 ret = chsc_error_from_response(scm_area->response.code);
 if (ret != 0)
  CIO_MSG_EVENT(2, "chsc: scm info failed (rc=%04x)\n",
         scm_area->response.code);
out:
 return ret;
}
