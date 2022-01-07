
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static inline bool pqi_scsi3addr_equal(u8 *scsi3addr1, u8 *scsi3addr2)
{
 return memcmp(scsi3addr1, scsi3addr2, 8) == 0;
}
