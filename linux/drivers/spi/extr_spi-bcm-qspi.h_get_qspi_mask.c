
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;




 int BSPI_LR_INTERRUPTS_ALL ;
 int BSPI_LR_INTERRUPTS_ERROR ;
 int INTR_MSPI_DONE_MASK ;


 int QSPI_INTERRUPTS_ALL ;

__attribute__((used)) static inline u32 get_qspi_mask(int type)
{
 switch (type) {
 case 128:
  return INTR_MSPI_DONE_MASK;
 case 131:
  return BSPI_LR_INTERRUPTS_ALL;
 case 129:
  return QSPI_INTERRUPTS_ALL;
 case 130:
  return BSPI_LR_INTERRUPTS_ERROR;
 }

 return 0;
}
