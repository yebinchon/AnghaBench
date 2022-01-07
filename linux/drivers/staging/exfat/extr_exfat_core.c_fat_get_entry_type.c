
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dos_dentry_t {int* name; int attr; } ;
struct dentry_t {int dummy; } ;


 int ATTR_EXTEND ;
 int ATTR_SUBDIR ;
 int ATTR_VOLUME ;
 int TYPE_DELETED ;
 int TYPE_DIR ;
 int TYPE_EXTEND ;
 int TYPE_FILE ;
 int TYPE_UNUSED ;
 int TYPE_VOLUME ;

u32 fat_get_entry_type(struct dentry_t *p_entry)
{
 struct dos_dentry_t *ep = (struct dos_dentry_t *)p_entry;

 if (*(ep->name) == 0x0)
  return TYPE_UNUSED;

 else if (*(ep->name) == 0xE5)
  return TYPE_DELETED;

 else if (ep->attr == ATTR_EXTEND)
  return TYPE_EXTEND;

 else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_VOLUME)
  return TYPE_VOLUME;

 else if ((ep->attr & (ATTR_SUBDIR | ATTR_VOLUME)) == ATTR_SUBDIR)
  return TYPE_DIR;

 return TYPE_FILE;
}
