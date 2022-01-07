
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct file_dentry_t {int type; int attr; } ;
struct dentry_t {int dummy; } ;


 int ATTR_SUBDIR ;
 int GET16_A (int ) ;
 int TYPE_ACL ;
 int TYPE_ACLTAB ;
 int TYPE_BENIGN_PRI ;
 int TYPE_BENIGN_SEC ;
 int TYPE_BITMAP ;
 int TYPE_CRITICAL_PRI ;
 int TYPE_CRITICAL_SEC ;
 int TYPE_DELETED ;
 int TYPE_DIR ;
 int TYPE_EXTEND ;
 int TYPE_FILE ;
 int TYPE_GUID ;
 int TYPE_INVALID ;
 int TYPE_PADDING ;
 int TYPE_STREAM ;
 int TYPE_UNUSED ;
 int TYPE_UPCASE ;
 int TYPE_VOLUME ;

u32 exfat_get_entry_type(struct dentry_t *p_entry)
{
 struct file_dentry_t *ep = (struct file_dentry_t *)p_entry;

 if (ep->type == 0x0) {
  return TYPE_UNUSED;
 } else if (ep->type < 0x80) {
  return TYPE_DELETED;
 } else if (ep->type == 0x80) {
  return TYPE_INVALID;
 } else if (ep->type < 0xA0) {
  if (ep->type == 0x81) {
   return TYPE_BITMAP;
  } else if (ep->type == 0x82) {
   return TYPE_UPCASE;
  } else if (ep->type == 0x83) {
   return TYPE_VOLUME;
  } else if (ep->type == 0x85) {
   if (GET16_A(ep->attr) & ATTR_SUBDIR)
    return TYPE_DIR;
   else
    return TYPE_FILE;
  }
  return TYPE_CRITICAL_PRI;
 } else if (ep->type < 0xC0) {
  if (ep->type == 0xA0)
   return TYPE_GUID;
  else if (ep->type == 0xA1)
   return TYPE_PADDING;
  else if (ep->type == 0xA2)
   return TYPE_ACLTAB;
  return TYPE_BENIGN_PRI;
 } else if (ep->type < 0xE0) {
  if (ep->type == 0xC0)
   return TYPE_STREAM;
  else if (ep->type == 0xC1)
   return TYPE_EXTEND;
  else if (ep->type == 0xC2)
   return TYPE_ACL;
  return TYPE_CRITICAL_SEC;
 }

 return TYPE_BENIGN_SEC;
}
