
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct bcm_qspi {int dummy; } ;


 int MSPI ;
 scalar_t__ MSPI_TXRAM ;
 int bcm_qspi_write (struct bcm_qspi*,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void write_txram_slot_u8(struct bcm_qspi *qspi, int slot,
           u8 val)
{
 u32 reg_offset = MSPI_TXRAM + (slot << 3);


 bcm_qspi_write(qspi, MSPI, reg_offset, val);
}
