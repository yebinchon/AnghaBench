
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v2p_entry {int kref; int l; } ;


 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int scsiback_free_translation_entry ;

__attribute__((used)) static void __scsiback_del_translation_entry(struct v2p_entry *entry)
{
 list_del(&entry->l);
 kref_put(&entry->kref, scsiback_free_translation_entry);
}
