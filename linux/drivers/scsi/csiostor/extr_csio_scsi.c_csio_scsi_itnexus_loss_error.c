
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
__attribute__((used)) static inline bool
csio_scsi_itnexus_loss_error(uint16_t error)
{
 switch (error) {
 case 132:
 case 128:
 case 129:
 case 130:
 case 131:
  return 1;
 }
 return 0;
}
