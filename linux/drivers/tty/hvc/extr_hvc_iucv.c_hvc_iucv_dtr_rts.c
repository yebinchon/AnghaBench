
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_path {int dummy; } ;
struct hvc_struct {int vtermno; } ;
struct hvc_iucv_private {int lock; int iucv_state; struct iucv_path* path; } ;


 int IUCV_DISCONN ;
 int flush_sndbuf_sync (struct hvc_iucv_private*) ;
 struct hvc_iucv_private* hvc_iucv_get_private (int ) ;
 int iucv_path_free (struct iucv_path*) ;
 int iucv_path_sever (struct iucv_path*,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hvc_iucv_dtr_rts(struct hvc_struct *hp, int raise)
{
 struct hvc_iucv_private *priv;
 struct iucv_path *path;




 if (raise)
  return;

 priv = hvc_iucv_get_private(hp->vtermno);
 if (!priv)
  return;




 flush_sndbuf_sync(priv);

 spin_lock_bh(&priv->lock);
 path = priv->path;
 priv->path = ((void*)0);
 priv->iucv_state = IUCV_DISCONN;
 spin_unlock_bh(&priv->lock);



 if (path) {
  iucv_path_sever(path, ((void*)0));
  iucv_path_free(path);
 }
}
