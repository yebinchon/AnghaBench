
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wildcard ;
typedef char u8 ;
struct iucv_path {int msglim; int flags; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; char* srv_name; char* info_path; int lock; int sndbuf_work; struct iucv_path* path; } ;


 int ASCEBC (char*,int) ;
 int ENODEV ;
 scalar_t__ IUCV_CONNECTED ;
 scalar_t__ IUCV_DISCONN ;
 int IUCV_IPRMDATA ;
 int hvc_iucv_devices ;
 int hvc_iucv_filter_connreq (char*) ;
 int hvc_iucv_filter_lock ;
 int hvc_iucv_handler ;
 struct hvc_iucv_private** hvc_iucv_table ;
 int iucv_path_accept (struct iucv_path*,int *,char*,struct hvc_iucv_private*) ;
 int iucv_path_free (struct iucv_path*) ;
 int iucv_path_sever (struct iucv_path*,char*) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int pr_info (char*,char*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int hvc_iucv_path_pending(struct iucv_path *path, u8 *ipvmid,
      u8 *ipuser)
{
 struct hvc_iucv_private *priv, *tmp;
 u8 wildcard[9] = "lnxhvc  ";
 int i, rc, find_unused;
 u8 nuser_data[16];
 u8 vm_user_id[9];

 ASCEBC(wildcard, sizeof(wildcard));
 find_unused = !memcmp(wildcard, ipuser, 8);






 priv = ((void*)0);
 for (i = 0; i < hvc_iucv_devices; i++) {
  tmp = hvc_iucv_table[i];
  if (!tmp)
   continue;

  if (find_unused) {
   spin_lock(&tmp->lock);
   if (tmp->iucv_state == IUCV_DISCONN)
    priv = tmp;
   spin_unlock(&tmp->lock);

  } else if (!memcmp(tmp->srv_name, ipuser, 8))
    priv = tmp;
  if (priv)
   break;
 }
 if (!priv)
  return -ENODEV;


 read_lock(&hvc_iucv_filter_lock);
 rc = hvc_iucv_filter_connreq(ipvmid);
 read_unlock(&hvc_iucv_filter_lock);
 if (rc) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  memcpy(vm_user_id, ipvmid, 8);
  vm_user_id[8] = 0;
  pr_info("A connection request from z/VM user ID %s "
   "was refused\n", vm_user_id);
  return 0;
 }

 spin_lock(&priv->lock);




 if (priv->iucv_state != IUCV_DISCONN) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  goto out_path_handled;
 }


 memcpy(nuser_data, ipuser + 8, 8);
 memcpy(nuser_data + 8, ipuser, 8);
 path->msglim = 0xffff;
 path->flags &= ~IUCV_IPRMDATA;
 rc = iucv_path_accept(path, &hvc_iucv_handler, nuser_data, priv);
 if (rc) {
  iucv_path_sever(path, ipuser);
  iucv_path_free(path);
  goto out_path_handled;
 }
 priv->path = path;
 priv->iucv_state = IUCV_CONNECTED;


 memcpy(priv->info_path, ipvmid, 8);
 memcpy(priv->info_path + 8, ipuser + 8, 8);


 schedule_delayed_work(&priv->sndbuf_work, 5);

out_path_handled:
 spin_unlock(&priv->lock);
 return 0;
}
