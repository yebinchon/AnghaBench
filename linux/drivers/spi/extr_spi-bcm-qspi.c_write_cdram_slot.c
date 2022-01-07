
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi {int dummy; } ;


 int MSPI ;
 scalar_t__ MSPI_CDRAM ;
 int bcm_qspi_write (struct bcm_qspi*,int ,scalar_t__,int ) ;

__attribute__((used)) static inline void write_cdram_slot(struct bcm_qspi *qspi, int slot, u32 val)
{
 bcm_qspi_write(qspi, MSPI, (MSPI_CDRAM + (slot << 2)), val);
}
