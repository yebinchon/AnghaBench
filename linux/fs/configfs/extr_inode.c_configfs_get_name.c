
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct configfs_dirent {int s_type; struct configfs_attribute* s_element; TYPE_2__* s_dentry; } ;
struct configfs_attribute {unsigned char const* ca_name; } ;
struct TYPE_3__ {unsigned char const* name; } ;
struct TYPE_4__ {TYPE_1__ d_name; } ;


 int BUG_ON (int) ;
 int CONFIGFS_DIR ;
 int CONFIGFS_ITEM_ATTR ;
 int CONFIGFS_ITEM_BIN_ATTR ;
 int CONFIGFS_ITEM_LINK ;

const unsigned char * configfs_get_name(struct configfs_dirent *sd)
{
 struct configfs_attribute *attr;

 BUG_ON(!sd || !sd->s_element);


 if (sd->s_type & (CONFIGFS_DIR | CONFIGFS_ITEM_LINK))
  return sd->s_dentry->d_name.name;

 if (sd->s_type & (CONFIGFS_ITEM_ATTR | CONFIGFS_ITEM_BIN_ATTR)) {
  attr = sd->s_element;
  return attr->ca_name;
 }
 return ((void*)0);
}
