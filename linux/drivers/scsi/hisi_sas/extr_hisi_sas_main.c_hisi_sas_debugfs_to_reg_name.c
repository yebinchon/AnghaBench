
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_sas_debugfs_reg_lu {char const* name; int off; } ;



__attribute__((used)) static const char *
hisi_sas_debugfs_to_reg_name(int off, int base_off,
        const struct hisi_sas_debugfs_reg_lu *lu)
{
 for (; lu->name; lu++) {
  if (off == lu->off - base_off)
   return lu->name;
 }

 return ((void*)0);
}
