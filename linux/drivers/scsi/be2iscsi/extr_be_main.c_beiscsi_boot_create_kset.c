
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iscsi_boot_kobj {int dummy; } ;
struct boot_struct {int * boot_kset; } ;
struct beiscsi_hba {TYPE_1__* shost; struct boot_struct boot_struct; } ;
struct TYPE_3__ {int host_no; } ;


 int ENOMEM ;
 int KERN_ERR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*) ;
 int beiscsi_boot_kobj_release ;
 int beiscsi_eth_get_attr_visibility ;
 int beiscsi_ini_get_attr_visibility ;
 int beiscsi_show_boot_eth_info ;
 int beiscsi_show_boot_ini_info ;
 int beiscsi_show_boot_tgt_info ;
 int beiscsi_tgt_get_attr_visibility ;
 struct iscsi_boot_kobj* iscsi_boot_create_ethernet (int *,int ,struct beiscsi_hba*,int ,int ,int ) ;
 int * iscsi_boot_create_host_kset (int ) ;
 struct iscsi_boot_kobj* iscsi_boot_create_initiator (int *,int ,struct beiscsi_hba*,int ,int ,int ) ;
 struct iscsi_boot_kobj* iscsi_boot_create_target (int *,int ,struct beiscsi_hba*,int ,int ,int ) ;
 int iscsi_boot_destroy_kset (int *) ;
 int scsi_host_get (TYPE_1__*) ;
 int scsi_host_put (TYPE_1__*) ;

__attribute__((used)) static int beiscsi_boot_create_kset(struct beiscsi_hba *phba)
{
 struct boot_struct *bs = &phba->boot_struct;
 struct iscsi_boot_kobj *boot_kobj;

 if (bs->boot_kset) {
  __beiscsi_log(phba, KERN_ERR,
         "BM_%d: boot_kset already created\n");
  return 0;
 }

 bs->boot_kset = iscsi_boot_create_host_kset(phba->shost->host_no);
 if (!bs->boot_kset) {
  __beiscsi_log(phba, KERN_ERR,
         "BM_%d: boot_kset alloc failed\n");
  return -ENOMEM;
 }


 if (!scsi_host_get(phba->shost))
  goto free_kset;

 boot_kobj = iscsi_boot_create_target(bs->boot_kset, 0, phba,
          beiscsi_show_boot_tgt_info,
          beiscsi_tgt_get_attr_visibility,
          beiscsi_boot_kobj_release);
 if (!boot_kobj)
  goto put_shost;

 if (!scsi_host_get(phba->shost))
  goto free_kset;

 boot_kobj = iscsi_boot_create_initiator(bs->boot_kset, 0, phba,
      beiscsi_show_boot_ini_info,
      beiscsi_ini_get_attr_visibility,
      beiscsi_boot_kobj_release);
 if (!boot_kobj)
  goto put_shost;

 if (!scsi_host_get(phba->shost))
  goto free_kset;

 boot_kobj = iscsi_boot_create_ethernet(bs->boot_kset, 0, phba,
            beiscsi_show_boot_eth_info,
            beiscsi_eth_get_attr_visibility,
            beiscsi_boot_kobj_release);
 if (!boot_kobj)
  goto put_shost;

 return 0;

put_shost:
 scsi_host_put(phba->shost);
free_kset:
 iscsi_boot_destroy_kset(bs->boot_kset);
 bs->boot_kset = ((void*)0);
 return -ENOMEM;
}
