
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct qla_hw_data {int dummy; } ;


 int NV_READ_OP ;
 int qla2x00_nvram_request (struct qla_hw_data*,int) ;

__attribute__((used)) static uint16_t
qla2x00_get_nvram_word(struct qla_hw_data *ha, uint32_t addr)
{
 uint16_t data;
 uint32_t nv_cmd;

 nv_cmd = addr << 16;
 nv_cmd |= NV_READ_OP;
 data = qla2x00_nvram_request(ha, nv_cmd);

 return (data);
}
