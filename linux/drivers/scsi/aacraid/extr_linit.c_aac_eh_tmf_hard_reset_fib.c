
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct fib {int hbacmd_size; scalar_t__ hw_error_pa; scalar_t__ hw_fib_va; } ;
struct aac_hba_reset_req {void* error_length; void* error_ptr_lo; void* error_ptr_hi; int it_nexus; } ;
struct aac_hba_map_info {int rmw_nexus; } ;


 int FW_ERROR_BUFFER_SIZE ;
 int HBA_IU_TYPE_SATA_REQ ;
 void* cpu_to_le32 (int ) ;
 int memset (struct aac_hba_reset_req*,int ,int) ;

__attribute__((used)) static u8 aac_eh_tmf_hard_reset_fib(struct aac_hba_map_info *info,
        struct fib *fib)
{
 struct aac_hba_reset_req *rst;
 u64 address;


 rst = (struct aac_hba_reset_req *)fib->hw_fib_va;
 memset(rst, 0, sizeof(*rst));
 rst->it_nexus = info->rmw_nexus;

 address = (u64)fib->hw_error_pa;
 rst->error_ptr_hi = cpu_to_le32((u32)(address >> 32));
 rst->error_ptr_lo = cpu_to_le32((u32)(address & 0xffffffff));
 rst->error_length = cpu_to_le32(FW_ERROR_BUFFER_SIZE);
 fib->hbacmd_size = sizeof(*rst);

       return HBA_IU_TYPE_SATA_REQ;
}
