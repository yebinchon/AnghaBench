
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_logical_dev_addr_mode(unsigned char scsi3addr[])
{
 return (scsi3addr[3] & 0xC0) == 0x40;
}
