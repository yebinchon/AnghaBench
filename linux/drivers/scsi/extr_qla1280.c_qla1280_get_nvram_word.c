
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct scsi_qla_host {int dummy; } ;


 int NV_READ_OP ;
 int dprintk (int,char*,int ) ;
 int le16_to_cpu (int ) ;
 int qla1280_nvram_request (struct scsi_qla_host*,int) ;

__attribute__((used)) static uint16_t
qla1280_get_nvram_word(struct scsi_qla_host *ha, uint32_t address)
{
 uint32_t nv_cmd;
 uint16_t data;

 nv_cmd = address << 16;
 nv_cmd |= NV_READ_OP;

 data = le16_to_cpu(qla1280_nvram_request(ha, nv_cmd));

 dprintk(8, "qla1280_get_nvram_word: exiting normally NVRAM data = "
  "0x%x", data);

 return data;
}
