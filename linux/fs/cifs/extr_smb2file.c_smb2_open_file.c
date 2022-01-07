
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct smb2_file_all_info {scalar_t__ IndexNumber; } ;
struct network_resiliency_req {scalar_t__ Reserved; int Timeout; } ;
struct cifs_open_parms {TYPE_1__* tcon; int desired_access; int cifs_sb; int path; struct cifs_fid* fid; } ;
struct cifs_fid {int volatile_fid; int persistent_fid; } ;
typedef int nr_ioctl_req ;
typedef int __u8 ;
typedef int __u32 ;
typedef struct smb2_file_all_info __le16 ;
struct TYPE_3__ {int use_resilient; int handle_timeout; } ;
typedef int FILE_ALL_INFO ;


 int CIFSMaxBufSize ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int FILE_READ_ATTRIBUTES ;
 int FSCTL_LMR_REQUEST_RESILIENCY ;
 int FYI ;
 int GFP_KERNEL ;
 int PATH_MAX ;
 int SMB2_OPLOCK_LEVEL_BATCH ;
 int SMB2_get_srv_num (unsigned int const,TYPE_1__*,int ,int ,scalar_t__*) ;
 int SMB2_ioctl (unsigned int const,TYPE_1__*,int ,int ,int ,int,char*,int,int ,int *,int *) ;
 int SMB2_open (unsigned int const,struct cifs_open_parms*,struct smb2_file_all_info*,int *,struct smb2_file_all_info*,int *,int *) ;
 int VFS ;
 struct smb2_file_all_info* cifs_convert_path_to_utf16 (int ,int ) ;
 int cifs_dbg (int ,char*,...) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct smb2_file_all_info*) ;
 struct smb2_file_all_info* kzalloc (int,int ) ;
 int move_smb2_info_to_cifs (int *,struct smb2_file_all_info*) ;

int
smb2_open_file(const unsigned int xid, struct cifs_open_parms *oparms,
        __u32 *oplock, FILE_ALL_INFO *buf)
{
 int rc;
 __le16 *smb2_path;
 struct smb2_file_all_info *smb2_data = ((void*)0);
 __u8 smb2_oplock;
 struct cifs_fid *fid = oparms->fid;
 struct network_resiliency_req nr_ioctl_req;

 smb2_path = cifs_convert_path_to_utf16(oparms->path, oparms->cifs_sb);
 if (smb2_path == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }

 smb2_data = kzalloc(sizeof(struct smb2_file_all_info) + PATH_MAX * 2,
       GFP_KERNEL);
 if (smb2_data == ((void*)0)) {
  rc = -ENOMEM;
  goto out;
 }

 oparms->desired_access |= FILE_READ_ATTRIBUTES;
 smb2_oplock = SMB2_OPLOCK_LEVEL_BATCH;

 rc = SMB2_open(xid, oparms, smb2_path, &smb2_oplock, smb2_data, ((void*)0),
         ((void*)0));
 if (rc)
  goto out;


  if (oparms->tcon->use_resilient) {

  nr_ioctl_req.Timeout =
   cpu_to_le32(oparms->tcon->handle_timeout);
  nr_ioctl_req.Reserved = 0;
  rc = SMB2_ioctl(xid, oparms->tcon, fid->persistent_fid,
   fid->volatile_fid, FSCTL_LMR_REQUEST_RESILIENCY,
   1 ,
   (char *)&nr_ioctl_req, sizeof(nr_ioctl_req),
   CIFSMaxBufSize, ((void*)0), ((void*)0) );
  if (rc == -EOPNOTSUPP) {
   cifs_dbg(VFS,
        "resiliency not supported by server, disabling\n");
   oparms->tcon->use_resilient = 0;
  } else if (rc)
   cifs_dbg(FYI, "error %d setting resiliency\n", rc);

  rc = 0;
 }

 if (buf) {

  if (smb2_data->IndexNumber == 0) {
   rc = SMB2_get_srv_num(xid, oparms->tcon,
          fid->persistent_fid,
          fid->volatile_fid,
          &smb2_data->IndexNumber);
   if (rc) {




    smb2_data->IndexNumber = 0;
    rc = 0;
   }
  }
  move_smb2_info_to_cifs(buf, smb2_data);
 }

 *oplock = smb2_oplock;
out:
 kfree(smb2_data);
 kfree(smb2_path);
 return rc;
}
