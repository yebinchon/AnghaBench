
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esas2r_adapter {TYPE_1__* pcid; int flags2; int fw_coredump_buff; } ;
struct TYPE_2__ {scalar_t__ revision; } ;


 int AF2_COREDUMP_AVAIL ;
 int AF2_COREDUMP_SAVED ;
 int ESAS2R_FWCOREDUMP_SZ ;
 int MU_CTL_IN_FULL_RST ;
 int MU_CTL_IN_FULL_RST2 ;
 int MU_CTL_STATUS_IN ;
 int MU_CTL_STATUS_IN_B2 ;
 scalar_t__ MVR_FREY_B2 ;
 scalar_t__ MW_DATA_ADDR_SRAM ;
 int clear_bit (int ,int *) ;
 int esas2r_is_adapter_present (struct esas2r_adapter*) ;
 int esas2r_read_mem_block (struct esas2r_adapter*,int ,scalar_t__,int ) ;
 int esas2r_write_register_dword (struct esas2r_adapter*,int ,int ) ;
 int mdelay (int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void esas2r_reset_chip(struct esas2r_adapter *a)
{
 if (!esas2r_is_adapter_present(a))
  return;






 if (test_bit(AF2_COREDUMP_AVAIL, &a->flags2) &&
     !test_bit(AF2_COREDUMP_SAVED, &a->flags2)) {
  esas2r_read_mem_block(a,
          a->fw_coredump_buff,
          MW_DATA_ADDR_SRAM + 0x80000,
          ESAS2R_FWCOREDUMP_SZ);

  set_bit(AF2_COREDUMP_SAVED, &a->flags2);
 }

 clear_bit(AF2_COREDUMP_AVAIL, &a->flags2);


 if (a->pcid->revision == MVR_FREY_B2)
  esas2r_write_register_dword(a, MU_CTL_STATUS_IN_B2,
         MU_CTL_IN_FULL_RST2);
 else
  esas2r_write_register_dword(a, MU_CTL_STATUS_IN,
         MU_CTL_IN_FULL_RST);



 mdelay(10);
}
