
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsg_callback {char const* prefix; void (* callback ) (char const*,char*) ;int list; int len; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct smsg_callback* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int smsg_list ;
 int smsg_list_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strlen (char const*) ;

int smsg_register_callback(const char *prefix,
      void (*callback)(const char *from, char *str))
{
 struct smsg_callback *cb;

 cb = kmalloc(sizeof(struct smsg_callback), GFP_KERNEL);
 if (!cb)
  return -ENOMEM;
 cb->prefix = prefix;
 cb->len = strlen(prefix);
 cb->callback = callback;
 spin_lock_bh(&smsg_list_lock);
 list_add_tail(&cb->list, &smsg_list);
 spin_unlock_bh(&smsg_list_lock);
 return 0;
}
