
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline void pqi_mask_device(u8 *scsi3addr)
{
 scsi3addr[3] |= 0xc0;
}
