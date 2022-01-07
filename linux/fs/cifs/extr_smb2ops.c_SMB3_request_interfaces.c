
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct network_interface_info_ioctl_rsp {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {size_t iface_count; int iface_lock; int iface_last_update; struct network_interface_info_ioctl_rsp* iface_list; } ;
typedef struct network_interface_info_ioctl_rsp cifs_server_iface ;


 int CIFSMaxBufSize ;
 int EOPNOTSUPP ;
 int FSCTL_QUERY_NETWORK_INTERFACE_INFO ;
 int FYI ;
 int NO_FILE_ID ;
 int SMB2_ioctl (unsigned int const,struct cifs_tcon*,int ,int ,int ,int,int *,int ,int ,char**,unsigned int*) ;
 int VFS ;
 int cifs_dbg (int ,char*) ;
 int cifs_tcon_dbg (int ,char*,int) ;
 int jiffies ;
 int kfree (struct network_interface_info_ioctl_rsp*) ;
 int parse_server_interfaces (struct network_interface_info_ioctl_rsp*,unsigned int,struct network_interface_info_ioctl_rsp**,size_t*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
SMB3_request_interfaces(const unsigned int xid, struct cifs_tcon *tcon)
{
 int rc;
 unsigned int ret_data_len = 0;
 struct network_interface_info_ioctl_rsp *out_buf = ((void*)0);
 struct cifs_server_iface *iface_list;
 size_t iface_count;
 struct cifs_ses *ses = tcon->ses;

 rc = SMB2_ioctl(xid, tcon, NO_FILE_ID, NO_FILE_ID,
   FSCTL_QUERY_NETWORK_INTERFACE_INFO, 1 ,
   ((void*)0) , 0 ,
   CIFSMaxBufSize, (char **)&out_buf, &ret_data_len);
 if (rc == -EOPNOTSUPP) {
  cifs_dbg(FYI,
    "server does not support query network interfaces\n");
  goto out;
 } else if (rc != 0) {
  cifs_tcon_dbg(VFS, "error %d on ioctl to get interface list\n", rc);
  goto out;
 }

 rc = parse_server_interfaces(out_buf, ret_data_len,
         &iface_list, &iface_count);
 if (rc)
  goto out;

 spin_lock(&ses->iface_lock);
 kfree(ses->iface_list);
 ses->iface_list = iface_list;
 ses->iface_count = iface_count;
 ses->iface_last_update = jiffies;
 spin_unlock(&ses->iface_lock);

out:
 kfree(out_buf);
 return rc;
}
