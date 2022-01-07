
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct scsi_lun {int dummy; } ;
typedef int __be64 ;


 int be64_to_cpu (int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;

__attribute__((used)) static inline u64 lun_to_lunid(u64 lun)
{
 __be64 lun_id;

 int_to_scsilun(lun, (struct scsi_lun *)&lun_id);
 return be64_to_cpu(lun_id);
}
