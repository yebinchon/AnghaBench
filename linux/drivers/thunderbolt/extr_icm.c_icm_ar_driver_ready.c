
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb {int dummy; } ;
struct TYPE_4__ {int code; } ;
struct icm_pkg_driver_ready {TYPE_2__ hdr; } ;
struct TYPE_3__ {int flags; } ;
struct icm_ar_pkg_driver_ready_response {int info; TYPE_1__ hdr; } ;
typedef int request ;
typedef int reply ;
typedef enum tb_security_level { ____Placeholder_tb_security_level } tb_security_level ;


 int ICM_AR_FLAGS_RTD3 ;
 size_t ICM_AR_INFO_BOOT_ACL_MASK ;
 size_t ICM_AR_INFO_BOOT_ACL_SHIFT ;
 int ICM_AR_INFO_BOOT_ACL_SUPPORTED ;
 int ICM_AR_INFO_SLEVEL_MASK ;
 int ICM_DRIVER_READY ;
 int ICM_TIMEOUT ;
 int icm_request (struct tb*,struct icm_pkg_driver_ready*,int,struct icm_ar_pkg_driver_ready_response*,int,int,int ) ;
 int memset (struct icm_ar_pkg_driver_ready_response*,int ,int) ;

__attribute__((used)) static int
icm_ar_driver_ready(struct tb *tb, enum tb_security_level *security_level,
      size_t *nboot_acl, bool *rpm)
{
 struct icm_ar_pkg_driver_ready_response reply;
 struct icm_pkg_driver_ready request = {
  .hdr.code = ICM_DRIVER_READY,
 };
 int ret;

 memset(&reply, 0, sizeof(reply));
 ret = icm_request(tb, &request, sizeof(request), &reply, sizeof(reply),
     1, ICM_TIMEOUT);
 if (ret)
  return ret;

 if (security_level)
  *security_level = reply.info & ICM_AR_INFO_SLEVEL_MASK;
 if (nboot_acl && (reply.info & ICM_AR_INFO_BOOT_ACL_SUPPORTED))
  *nboot_acl = (reply.info & ICM_AR_INFO_BOOT_ACL_MASK) >>
    ICM_AR_INFO_BOOT_ACL_SHIFT;
 if (rpm)
  *rpm = !!(reply.hdr.flags & ICM_AR_FLAGS_RTD3);

 return 0;
}
