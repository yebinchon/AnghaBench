
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct bcm_qspi {int dummy; } ;


 int MSPI ;
 scalar_t__ MSPI_TXRAM ;
 int bcm_qspi_write (struct bcm_qspi*,int ,scalar_t__,int) ;

__attribute__((used)) static inline void write_txram_slot_u16(struct bcm_qspi *qspi, int slot,
     u16 val)
{
 u32 reg_offset = MSPI_TXRAM;
 u32 msb_offset = reg_offset + (slot << 3);
 u32 lsb_offset = reg_offset + (slot << 3) + 0x4;

 bcm_qspi_write(qspi, MSPI, msb_offset, (val >> 8));
 bcm_qspi_write(qspi, MSPI, lsb_offset, (val & 0xff));
}
