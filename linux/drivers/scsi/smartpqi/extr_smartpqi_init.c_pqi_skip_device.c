
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ MASKED_DEVICE (int *) ;

__attribute__((used)) static inline bool pqi_skip_device(u8 *scsi3addr)
{

 if (MASKED_DEVICE(scsi3addr))
  return 1;

 return 0;
}
