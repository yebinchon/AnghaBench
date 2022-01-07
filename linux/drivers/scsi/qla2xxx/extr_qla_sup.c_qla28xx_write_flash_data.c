
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int ulong ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int u64 ;
struct secure_flash_update_block {int dummy; } ;
struct TYPE_21__ {scalar_t__ fac_supported; int secure_fw; scalar_t__ secure_adapter; } ;
struct qla_hw_data {int fdt_block_size; TYPE_1__* pdev; TYPE_2__ flags; } ;
struct qla_flt_region {scalar_t__ code; scalar_t__ attribute; } ;
struct TYPE_22__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_20__ {int dev; } ;


 int BIT_9 ;
 int FAC_SEMAPHORE_LOCK ;
 int FAC_SEMAPHORE_UNLOCK ;
 int FLASH_SEMAPHORE_REGISTER_ADDR ;
 scalar_t__ FLT_REG_FW ;
 scalar_t__ FLT_REG_FW_SEC_27XX ;
 int GFP_KERNEL ;
 int ISP_ABORT_NEEDED ;
 int ISP_ABORT_TO_ROM ;
 int OPTROM_BURST_DWORDS ;
 int OPTROM_BURST_SIZE ;
 int QLA_COMMAND_ERROR ;
 int QLA_SUCCESS ;
 int be32_to_cpu (int) ;
 void* dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,void*,scalar_t__) ;
 int flash_data_addr (struct qla_hw_data*,int) ;
 int memcpy (void*,int*,int) ;
 int ql_dbg (int ,TYPE_3__*,int,char*,int) ;
 int ql_dbg_user ;
 scalar_t__ ql_dbg_verbose ;
 int ql_log (scalar_t__,TYPE_3__*,int,char*,...) ;
 scalar_t__ ql_log_warn ;
 int qla24xx_erase_sector (TYPE_3__*,int) ;
 int qla24xx_protect_flash (TYPE_3__*) ;
 int qla24xx_unprotect_flash (TYPE_3__*) ;
 int qla28xx_extract_sfub_and_verify (TYPE_3__*,int*,int,int,int *) ;
 int qla28xx_get_flash_region (TYPE_3__*,int,struct qla_flt_region*) ;
 int qla28xx_secure_flash_update (TYPE_3__*,int ,scalar_t__,int,scalar_t__,int) ;
 int qla2x00_load_ram (TYPE_3__*,scalar_t__,int ,int) ;
 int qla2x00_wait_for_chip_reset (TYPE_3__*) ;
 int qla2x00_wait_for_hba_online (TYPE_3__*) ;
 int qla2x00_write_ram_word (TYPE_3__*,int,int ) ;
 int qla2xxx_wake_dpc (TYPE_3__*) ;
 int qla2xxx_write_remote_register (TYPE_3__*,int ,int) ;
 int qla81xx_fac_semaphore_access (TYPE_3__*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
qla28xx_write_flash_data(scsi_qla_host_t *vha, uint32_t *dwptr, uint32_t faddr,
    uint32_t dwords)
{
 struct qla_hw_data *ha = vha->hw;
 ulong liter;
 ulong dburst = OPTROM_BURST_DWORDS;
 uint32_t sec_mask, rest_addr, fdata;
 void *optrom = ((void*)0);
 dma_addr_t optrom_dma;
 int rval;
 struct secure_flash_update_block *sfub;
 dma_addr_t sfub_dma;
 uint32_t offset = faddr << 2;
 uint32_t buf_size_without_sfub = 0;
 struct qla_flt_region region;
 bool reset_to_rom = 0;
 uint32_t risc_size, risc_attr = 0;
 uint32_t *fw_array = ((void*)0);


 rval = qla28xx_get_flash_region(vha, offset, &region);

 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0xffff,
      "Invalid address %x - not a region start address\n",
      offset);
  goto done;
 }


 optrom = dma_alloc_coherent(&ha->pdev->dev, OPTROM_BURST_SIZE,
     &optrom_dma, GFP_KERNEL);
 if (!optrom) {
  ql_log(ql_log_warn, vha, 0x7095,
      "Failed allocate burst (%x bytes)\n", OPTROM_BURST_SIZE);
  rval = QLA_COMMAND_ERROR;
  goto done;
 }





 if (ha->flags.secure_adapter && region.attribute) {

  ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
      "Region %x is secure\n", region.code);

  if (region.code == FLT_REG_FW ||
      region.code == FLT_REG_FW_SEC_27XX) {
   fw_array = dwptr;


   risc_size = be32_to_cpu(fw_array[3]);
   risc_attr = be32_to_cpu(fw_array[9]);

   buf_size_without_sfub = risc_size;
   fw_array += risc_size;


   risc_size = be32_to_cpu(fw_array[3]);

   buf_size_without_sfub += risc_size;
   fw_array += risc_size;


   risc_size = be32_to_cpu(fw_array[2]);


   buf_size_without_sfub += risc_size;
   fw_array += risc_size;

   if (risc_attr & BIT_9) {

    risc_size = be32_to_cpu(fw_array[2]);


    buf_size_without_sfub += risc_size;
    fw_array += risc_size;
   }
  } else {
   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Secure region %x not supported\n",
       region.code);
   rval = QLA_COMMAND_ERROR;
   goto done;
  }

  sfub = dma_alloc_coherent(&ha->pdev->dev,
   sizeof(struct secure_flash_update_block), &sfub_dma,
   GFP_KERNEL);
  if (!sfub) {
   ql_log(ql_log_warn, vha, 0xffff,
       "Unable to allocate memory for SFUB\n");
   rval = QLA_COMMAND_ERROR;
   goto done;
  }

  rval = qla28xx_extract_sfub_and_verify(vha, dwptr, dwords,
   buf_size_without_sfub, (uint8_t *)sfub);

  if (rval != QLA_SUCCESS)
   goto done;

  ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
      "SFUB extract and verify successful\n");
 }

 rest_addr = (ha->fdt_block_size >> 2) - 1;
 sec_mask = ~rest_addr;


 rval = qla81xx_fac_semaphore_access(vha, FAC_SEMAPHORE_LOCK);
 if (rval != QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0xffff,
      "Unable to lock flash semaphore.");
  goto done;
 }

 ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
     "Unprotect flash...\n");
 rval = qla24xx_unprotect_flash(vha);
 if (rval) {
  qla81xx_fac_semaphore_access(vha, FAC_SEMAPHORE_UNLOCK);
  ql_log(ql_log_warn, vha, 0x7096, "Failed unprotect flash\n");
  goto done;
 }

 for (liter = 0; liter < dwords; liter++, faddr++) {
  fdata = (faddr & sec_mask) << 2;


  if (!(faddr & rest_addr)) {
   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
       "Erase sector %#x...\n", faddr);
   rval = qla24xx_erase_sector(vha, fdata);
   if (rval) {
    ql_dbg(ql_dbg_user, vha, 0x7007,
        "Failed erase sector %#x\n", faddr);
    goto write_protect;
   }
  }
 }

 if (ha->flags.secure_adapter) {





  if (!ha->flags.secure_fw) {
   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Disable Write and Release Semaphore.");
   rval = qla24xx_protect_flash(vha);
   if (rval != QLA_SUCCESS) {
    qla81xx_fac_semaphore_access(vha,
     FAC_SEMAPHORE_UNLOCK);
    ql_log(ql_log_warn, vha, 0xffff,
        "Unable to protect flash.");
    goto done;
   }

   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Reset chip to ROM.");
   set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
   set_bit(ISP_ABORT_TO_ROM, &vha->dpc_flags);
   qla2xxx_wake_dpc(vha);
   rval = qla2x00_wait_for_chip_reset(vha);
   if (rval != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0xffff,
        "Unable to reset to ROM code.");
    goto done;
   }
   reset_to_rom = 1;
   ha->flags.fac_supported = 0;

   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Lock Semaphore");
   rval = qla2xxx_write_remote_register(vha,
       FLASH_SEMAPHORE_REGISTER_ADDR, 0x00020002);
   if (rval != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0xffff,
        "Unable to lock flash semaphore.");
    goto done;
   }


   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Enable Write.");
   rval = qla2x00_write_ram_word(vha, 0x7ffd0101, 0);
   if (rval) {
    ql_log(ql_log_warn, vha, 0x7096,
        "Failed unprotect flash\n");
    goto done;
   }
  }


  if (region.attribute && buf_size_without_sfub) {
   ql_log(ql_log_warn + ql_dbg_verbose, vha, 0xffff,
       "Sending Secure Flash MB Cmd\n");
   rval = qla28xx_secure_flash_update(vha, 0, region.code,
    buf_size_without_sfub, sfub_dma,
    sizeof(struct secure_flash_update_block));
   if (rval != QLA_SUCCESS) {
    ql_log(ql_log_warn, vha, 0xffff,
        "Secure Flash MB Cmd failed %x.", rval);
    goto write_protect;
   }
  }

 }


 faddr = offset >> 2;

 for (liter = 0; liter < dwords; liter++, faddr++, dwptr++) {
  fdata = (faddr & sec_mask) << 2;


  if (dwords - liter < dburst)
   dburst = dwords - liter;


  memcpy(optrom, dwptr, dburst << 2);


  ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
      "Write burst (%#lx dwords)...\n", dburst);
  rval = qla2x00_load_ram(vha, optrom_dma,
      flash_data_addr(ha, faddr), dburst);
  if (rval != QLA_SUCCESS) {
   ql_log(ql_log_warn, vha, 0x7097,
       "Failed burst write at %x (%p/%#llx)...\n",
       flash_data_addr(ha, faddr), optrom,
       (u64)optrom_dma);
   break;
  }

  liter += dburst - 1;
  faddr += dburst - 1;
  dwptr += dburst - 1;
  continue;
 }

write_protect:
 ql_log(ql_log_warn + ql_dbg_verbose, vha, 0x7095,
     "Protect flash...\n");
 rval = qla24xx_protect_flash(vha);
 if (rval) {
  qla81xx_fac_semaphore_access(vha, FAC_SEMAPHORE_UNLOCK);
  ql_log(ql_log_warn, vha, 0x7099,
      "Failed protect flash\n");
 }

 if (reset_to_rom == 1) {

  set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  qla2xxx_wake_dpc(vha);

  rval = qla2x00_wait_for_hba_online(vha);
  if (rval != QLA_SUCCESS)
   ql_log(ql_log_warn, vha, 0xffff,
       "Adapter did not come out of reset\n");
 }

done:
 if (optrom)
  dma_free_coherent(&ha->pdev->dev,
      OPTROM_BURST_SIZE, optrom, optrom_dma);

 return rval;
}
