
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm_qspi {int dummy; } ;


 int BSPI ;
 int BSPI_RAF_READ_DATA ;
 scalar_t__ bcm_qspi_bspi_ver_three (struct bcm_qspi*) ;
 int bcm_qspi_read (struct bcm_qspi*,int ,int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 bcm_qspi_bspi_lr_read_fifo(struct bcm_qspi *qspi)
{
 u32 data = bcm_qspi_read(qspi, BSPI, BSPI_RAF_READ_DATA);


 if (bcm_qspi_bspi_ver_three(qspi))
  data = le32_to_cpu(data);

 return data;
}
