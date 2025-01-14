
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysplex ;
struct seq_file {int dummy; } ;
struct dasd_psf_query_host_access {scalar_t__ host_access_information; } ;
struct dasd_device {int cdev; } ;
struct dasd_ckd_path_group_entry {unsigned long status_flags; unsigned long cylinder; scalar_t__ timestamp; int sysplex_name; int pgid; } ;
struct dasd_ckd_host_information {int entry_count; int entry_size; scalar_t__ entry; } ;


 int DBF_EVENT_DEVID (int ,int ,char*,char*) ;
 int DBF_WARNING ;
 int EBCASC (char*,int) ;
 int ENOMEM ;
 int GFP_NOIO ;
 int dasd_eckd_query_host_access (struct dasd_device*,struct dasd_psf_query_host_access*) ;
 int kfree (struct dasd_psf_query_host_access*) ;
 struct dasd_psf_query_host_access* kzalloc (int,int ) ;
 int memcpy (char**,int *,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static int dasd_hosts_print(struct dasd_device *device, struct seq_file *m)
{
 struct dasd_psf_query_host_access *access;
 struct dasd_ckd_path_group_entry *entry;
 struct dasd_ckd_host_information *info;
 char sysplex[9] = "";
 int rc, i;

 access = kzalloc(sizeof(*access), GFP_NOIO);
 if (!access) {
  DBF_EVENT_DEVID(DBF_WARNING, device->cdev, "%s",
    "Could not allocate access buffer");
  return -ENOMEM;
 }
 rc = dasd_eckd_query_host_access(device, access);
 if (rc) {
  kfree(access);
  return rc;
 }

 info = (struct dasd_ckd_host_information *)
  access->host_access_information;
 for (i = 0; i < info->entry_count; i++) {
  entry = (struct dasd_ckd_path_group_entry *)
   (info->entry + i * info->entry_size);

  seq_printf(m, "pgid %*phN\n", 11, entry->pgid);

  seq_printf(m, "status_flags %02x\n", entry->status_flags);

  memcpy(&sysplex, &entry->sysplex_name, sizeof(sysplex) - 1);
  EBCASC(sysplex, sizeof(sysplex));
  seq_printf(m, "sysplex_name %8s\n", sysplex);

  seq_printf(m, "supported_cylinder %d\n", entry->cylinder);

  seq_printf(m, "timestamp %lu\n", (unsigned long)
      entry->timestamp);
 }
 kfree(access);

 return 0;
}
