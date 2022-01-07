
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct Scsi_Host {int shost_gendev; } ;


 int __qla4xxx_is_chap_active ;
 int device_for_each_child (int *,int *,int ) ;

__attribute__((used)) static int qla4xxx_is_chap_active(struct Scsi_Host *shost,
      uint16_t chap_tbl_idx)
{
 int ret = 0;

 ret = device_for_each_child(&shost->shost_gendev, &chap_tbl_idx,
        __qla4xxx_is_chap_active);

 return ret;
}
