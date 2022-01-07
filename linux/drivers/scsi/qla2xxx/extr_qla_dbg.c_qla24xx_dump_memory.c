
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qla_hw_data {int fw_memory_size; int fw_dump_cap_flags; } ;


 int QLA_SUCCESS ;
 int RISC_EXT_MEM_DUMP_CMPL ;
 int RISC_SRAM_DUMP_CMPL ;
 int qla24xx_dump_ram (struct qla_hw_data*,int,void*,int,void**) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
qla24xx_dump_memory(struct qla_hw_data *ha, uint32_t *code_ram,
    uint32_t cram_size, void **nxt)
{
 int rval;


 rval = qla24xx_dump_ram(ha, 0x20000, code_ram, cram_size / 4, nxt);
 if (rval != QLA_SUCCESS)
  return rval;

 set_bit(RISC_SRAM_DUMP_CMPL, &ha->fw_dump_cap_flags);


 rval = qla24xx_dump_ram(ha, 0x100000, *nxt,
     ha->fw_memory_size - 0x100000 + 1, nxt);
 if (rval == QLA_SUCCESS)
  set_bit(RISC_EXT_MEM_DUMP_CMPL, &ha->fw_dump_cap_flags);

 return rval;
}
