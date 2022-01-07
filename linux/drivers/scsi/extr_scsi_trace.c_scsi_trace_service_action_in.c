
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef unsigned char u32 ;
struct trace_seq {int dummy; } ;
typedef int sector_t ;




 int SERVICE_ACTION16 (unsigned char*) ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,char const*,unsigned long long,unsigned char) ;
 int trace_seq_putc (struct trace_seq*,int ) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static const char *
scsi_trace_service_action_in(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p), *cmd;
 sector_t lba = 0;
 u32 alloc_len = 0;

 switch (SERVICE_ACTION16(cdb)) {
 case 128:
  cmd = "READ_CAPACITY_16";
  break;
 case 129:
  cmd = "GET_LBA_STATUS";
  break;
 default:
  trace_seq_puts(p, "UNKNOWN");
  goto out;
 }

 lba |= ((u64)cdb[2] << 56);
 lba |= ((u64)cdb[3] << 48);
 lba |= ((u64)cdb[4] << 40);
 lba |= ((u64)cdb[5] << 32);
 lba |= (cdb[6] << 24);
 lba |= (cdb[7] << 16);
 lba |= (cdb[8] << 8);
 lba |= cdb[9];
 alloc_len |= (cdb[10] << 24);
 alloc_len |= (cdb[11] << 16);
 alloc_len |= (cdb[12] << 8);
 alloc_len |= cdb[13];

 trace_seq_printf(p, "%s lba=%llu alloc_len=%u", cmd,
    (unsigned long long)lba, alloc_len);

out:
 trace_seq_putc(p, 0);

 return ret;
}
