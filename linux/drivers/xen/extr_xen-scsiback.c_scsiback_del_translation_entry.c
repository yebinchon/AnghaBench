
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vscsibk_info {int v2p_lock; } ;
struct v2p_entry {int dummy; } ;
struct ids_tuple {int dummy; } ;


 int ENOENT ;
 int __scsiback_del_translation_entry (struct v2p_entry*) ;
 struct v2p_entry* scsiback_chk_translation_entry (struct vscsibk_info*,struct ids_tuple*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int scsiback_del_translation_entry(struct vscsibk_info *info,
       struct ids_tuple *v)
{
 struct v2p_entry *entry;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&info->v2p_lock, flags);

 entry = scsiback_chk_translation_entry(info, v);
 if (entry)
  __scsiback_del_translation_entry(entry);
 else
  ret = -ENOENT;

 spin_unlock_irqrestore(&info->v2p_lock, flags);
 return ret;
}
