
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi {int dummy; } ;


 int MSPI ;
 scalar_t__ MSPI_CDRAM ;
 int bcm_qspi_read (struct bcm_qspi*,int ,scalar_t__) ;

__attribute__((used)) static inline u32 read_cdram_slot(struct bcm_qspi *qspi, int slot)
{
 return bcm_qspi_read(qspi, MSPI, MSPI_CDRAM + (slot << 2));
}
