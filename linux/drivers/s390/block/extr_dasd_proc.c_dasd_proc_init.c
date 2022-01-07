
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IWUSR ;
 int dasd_devices_entry ;
 int dasd_devices_seq_ops ;
 int * dasd_proc_root_entry ;
 int dasd_statistics_entry ;
 int dasd_stats_proc_fops ;
 int proc_create (char*,int,int *,int *) ;
 int proc_create_seq (char*,int,int *,int *) ;
 int * proc_mkdir (char*,int *) ;
 int remove_proc_entry (char*,int *) ;

int
dasd_proc_init(void)
{
 dasd_proc_root_entry = proc_mkdir("dasd", ((void*)0));
 if (!dasd_proc_root_entry)
  goto out_nodasd;
 dasd_devices_entry = proc_create_seq("devices", 0444,
      dasd_proc_root_entry,
      &dasd_devices_seq_ops);
 if (!dasd_devices_entry)
  goto out_nodevices;
 dasd_statistics_entry = proc_create("statistics",
         S_IFREG | S_IRUGO | S_IWUSR,
         dasd_proc_root_entry,
         &dasd_stats_proc_fops);
 if (!dasd_statistics_entry)
  goto out_nostatistics;
 return 0;

 out_nostatistics:
 remove_proc_entry("devices", dasd_proc_root_entry);
 out_nodevices:
 remove_proc_entry("dasd", ((void*)0));
 out_nodasd:
 return -ENOENT;
}
