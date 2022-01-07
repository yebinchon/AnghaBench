
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RAID_CTLR_LUNID ;
 int pqi_scsi3addr_equal (int *,int ) ;

__attribute__((used)) static inline bool pqi_is_hba_lunid(u8 *scsi3addr)
{
 return pqi_scsi3addr_equal(scsi3addr, RAID_CTLR_LUNID);
}
