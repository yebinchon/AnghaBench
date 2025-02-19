
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_qspi {int dev; } ;


 int MULTI_IO_MODE_SHFT ;
 int SDR_1BIT ;
 int SDR_2BIT ;
 int SDR_4BIT ;
 int dev_warn_once (int ,char*,unsigned int) ;

__attribute__((used)) static u32 qspi_buswidth_to_iomode(struct qcom_qspi *ctrl,
       unsigned int buswidth)
{
 switch (buswidth) {
 case 1:
  return SDR_1BIT << MULTI_IO_MODE_SHFT;
 case 2:
  return SDR_2BIT << MULTI_IO_MODE_SHFT;
 case 4:
  return SDR_4BIT << MULTI_IO_MODE_SHFT;
 default:
  dev_warn_once(ctrl->dev,
    "Unexpected bus width: %u\n", buswidth);
  return SDR_1BIT << MULTI_IO_MODE_SHFT;
 }
}
