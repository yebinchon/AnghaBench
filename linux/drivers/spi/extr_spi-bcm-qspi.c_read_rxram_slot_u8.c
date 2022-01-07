
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bcm_qspi {int dummy; } ;


 int MSPI ;
 scalar_t__ MSPI_RXRAM ;
 int bcm_qspi_read (struct bcm_qspi*,int ,scalar_t__) ;

__attribute__((used)) static inline u8 read_rxram_slot_u8(struct bcm_qspi *qspi, int slot)
{
 u32 slot_offset = MSPI_RXRAM + (slot << 3) + 0x4;


 return bcm_qspi_read(qspi, MSPI, slot_offset) & 0xff;
}
