
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcon_link {int tl_flags; int tl_time; struct cifs_tcon* tl_tcon; int tl_uid; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_ses {int linux_uid; } ;
struct cifs_sb_info {int prune_tlinks; int tlink_tree_lock; int tlink_tree; struct tcon_link* master_tlink; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TCON_LINK_IN_TREE ;
 int TCON_LINK_MASTER ;
 int TLINK_IDLE_EXPIRE ;
 int cifsiod_wq ;
 int jiffies ;
 struct tcon_link* kzalloc (int,int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tlink_rb_insert (int *,struct tcon_link*) ;

__attribute__((used)) static int mount_setup_tlink(struct cifs_sb_info *cifs_sb, struct cifs_ses *ses,
        struct cifs_tcon *tcon)
{
 struct tcon_link *tlink;


 tlink = kzalloc(sizeof(*tlink), GFP_KERNEL);
 if (tlink == ((void*)0))
  return -ENOMEM;

 tlink->tl_uid = ses->linux_uid;
 tlink->tl_tcon = tcon;
 tlink->tl_time = jiffies;
 set_bit(TCON_LINK_MASTER, &tlink->tl_flags);
 set_bit(TCON_LINK_IN_TREE, &tlink->tl_flags);

 cifs_sb->master_tlink = tlink;
 spin_lock(&cifs_sb->tlink_tree_lock);
 tlink_rb_insert(&cifs_sb->tlink_tree, tlink);
 spin_unlock(&cifs_sb->tlink_tree_lock);

 queue_delayed_work(cifsiod_wq, &cifs_sb->prune_tlinks,
    TLINK_IDLE_EXPIRE);
 return 0;
}
