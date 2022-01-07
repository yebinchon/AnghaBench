
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blist_flags_t ;


 int SCSI_DEVINFO_GLOBAL ;
 int scsi_dev_info_list_add_keyed (int,char*,char*,char*,int ,int ) ;

__attribute__((used)) static int scsi_dev_info_list_add(int compatible, char *vendor, char *model,
       char *strflags, blist_flags_t flags)
{
 return scsi_dev_info_list_add_keyed(compatible, vendor, model,
         strflags, flags,
         SCSI_DEVINFO_GLOBAL);
}
