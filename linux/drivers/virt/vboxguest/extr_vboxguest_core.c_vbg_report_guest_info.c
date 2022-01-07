
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_guest_info2 {int name; int additions_features; int additions_revision; int additions_build; int additions_minor; int additions_major; int os_type; int interface_version; } ;
struct vmmdev_guest_info {int name; int additions_features; int additions_revision; int additions_build; int additions_minor; int additions_major; int os_type; int interface_version; } ;
struct vbg_dev {int dummy; } ;


 int ENOMEM ;
 int VBG_KERNEL_REQUEST ;
 int VBG_SVN_REV ;
 int VBG_VERSION_BUILD ;
 int VBG_VERSION_MAJOR ;
 int VBG_VERSION_MINOR ;
 int VBG_VERSION_STRING ;
 int VERR_NOT_IMPLEMENTED ;
 int VERR_NOT_SUPPORTED ;
 int VINF_SUCCESS ;
 int VMMDEVREQ_REPORT_GUEST_INFO ;
 int VMMDEVREQ_REPORT_GUEST_INFO2 ;
 int VMMDEV_GUEST_INFO2_ADDITIONS_FEATURES_REQUESTOR_INFO ;
 int VMMDEV_OSTYPE_LINUX26 ;
 int VMMDEV_OSTYPE_X64 ;
 int VMMDEV_VERSION ;
 int strlcpy (int ,int ,int) ;
 struct vmmdev_guest_info2* vbg_req_alloc (int,int ,int ) ;
 int vbg_req_free (struct vmmdev_guest_info2*,int) ;
 int vbg_req_perform (struct vbg_dev*,struct vmmdev_guest_info2*) ;
 int vbg_status_code_to_errno (int) ;

__attribute__((used)) static int vbg_report_guest_info(struct vbg_dev *gdev)
{



 struct vmmdev_guest_info *req1 = ((void*)0);
 struct vmmdev_guest_info2 *req2 = ((void*)0);
 int rc, ret = -ENOMEM;

 req1 = vbg_req_alloc(sizeof(*req1), VMMDEVREQ_REPORT_GUEST_INFO,
        VBG_KERNEL_REQUEST);
 req2 = vbg_req_alloc(sizeof(*req2), VMMDEVREQ_REPORT_GUEST_INFO2,
        VBG_KERNEL_REQUEST);
 if (!req1 || !req2)
  goto out_free;

 req1->interface_version = VMMDEV_VERSION;
 req1->os_type = VMMDEV_OSTYPE_LINUX26;




 req2->additions_major = VBG_VERSION_MAJOR;
 req2->additions_minor = VBG_VERSION_MINOR;
 req2->additions_build = VBG_VERSION_BUILD;
 req2->additions_revision = VBG_SVN_REV;
 req2->additions_features =
  VMMDEV_GUEST_INFO2_ADDITIONS_FEATURES_REQUESTOR_INFO;
 strlcpy(req2->name, VBG_VERSION_STRING,
  sizeof(req2->name));
 rc = vbg_req_perform(gdev, req2);
 if (rc >= 0) {
  rc = vbg_req_perform(gdev, req1);
 } else if (rc == VERR_NOT_SUPPORTED || rc == VERR_NOT_IMPLEMENTED) {
  rc = vbg_req_perform(gdev, req1);
  if (rc >= 0) {
   rc = vbg_req_perform(gdev, req2);
   if (rc == VERR_NOT_IMPLEMENTED)
    rc = VINF_SUCCESS;
  }
 }
 ret = vbg_status_code_to_errno(rc);

out_free:
 vbg_req_free(req2, sizeof(*req2));
 vbg_req_free(req1, sizeof(*req1));
 return ret;
}
