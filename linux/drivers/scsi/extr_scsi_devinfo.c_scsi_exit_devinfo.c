
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCSI_DEVINFO_GLOBAL ;
 int remove_proc_entry (char*,int *) ;
 int scsi_dev_info_remove_list (int ) ;

void scsi_exit_devinfo(void)
{




 scsi_dev_info_remove_list(SCSI_DEVINFO_GLOBAL);
}
