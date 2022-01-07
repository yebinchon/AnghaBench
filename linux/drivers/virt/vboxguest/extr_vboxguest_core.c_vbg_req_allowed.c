
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmmdev_request_header {int request_type; } ;
struct vmmdev_guest_status {int facility; } ;
struct vbg_session {int requestor; } ;
struct vbg_dev {int dummy; } ;


 int EPERM ;
 int VMMDEV_REQUESTOR_USER_DEVICE ;
 int vbg_err (char*,int) ;

__attribute__((used)) static int vbg_req_allowed(struct vbg_dev *gdev, struct vbg_session *session,
      const struct vmmdev_request_header *req)
{
 const struct vmmdev_guest_status *guest_status;
 bool trusted_apps_only;

 switch (req->request_type) {

 case 145:
 case 143:
 case 144:
 case 134:
 case 128:
 case 160:
 case 138:
 case 163:
 case 152:
 case 161:
 case 141:
 case 139:
 case 149:
  trusted_apps_only = 1;
  break;


 case 153:
 case 137:
 case 136:
 case 154:
 case 147:
 case 155:
 case 135:
 case 164:
 case 162:
 case 140:
 case 159:
 case 133:
 case 156:
 case 158:
 case 132:
 case 131:
 case 130:
 case 129:
 case 157:
 case 151:
 case 148:
 case 146:
 case 150:
  trusted_apps_only = 0;
  break;


 case 142:
  guest_status = (const struct vmmdev_guest_status *)req;
  switch (guest_status->facility) {
  case 170:
  case 167:
   vbg_err("Denying userspace vmm report guest cap. call facility %#08x\n",
    guest_status->facility);
   return -EPERM;
  case 166:
   trusted_apps_only = 1;
   break;
  case 165:
  case 168:
  case 169:
  default:
   trusted_apps_only = 0;
   break;
  }
  break;


 default:
  vbg_err("Denying userspace vmm call type %#08x\n",
   req->request_type);
  return -EPERM;
 }

 if (trusted_apps_only &&
     (session->requestor & VMMDEV_REQUESTOR_USER_DEVICE)) {
  vbg_err("Denying userspace vmm call type %#08x through vboxuser device node\n",
   req->request_type);
  return -EPERM;
 }

 return 0;
}
