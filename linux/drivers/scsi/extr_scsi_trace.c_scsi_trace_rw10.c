
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
typedef unsigned char sector_t ;


 unsigned char WRITE_SAME ;
 char* trace_seq_buffer_ptr (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned char,...) ;
 int trace_seq_putc (struct trace_seq*,int ) ;

__attribute__((used)) static const char *
scsi_trace_rw10(struct trace_seq *p, unsigned char *cdb, int len)
{
 const char *ret = trace_seq_buffer_ptr(p);
 sector_t lba = 0, txlen = 0;

 lba |= (cdb[2] << 24);
 lba |= (cdb[3] << 16);
 lba |= (cdb[4] << 8);
 lba |= cdb[5];
 txlen |= (cdb[7] << 8);
 txlen |= cdb[8];

 trace_seq_printf(p, "lba=%llu txlen=%llu protect=%u",
    (unsigned long long)lba, (unsigned long long)txlen,
    cdb[1] >> 5);

 if (cdb[0] == WRITE_SAME)
  trace_seq_printf(p, " unmap=%u", cdb[1] >> 3 & 1);

 trace_seq_putc(p, 0);

 return ret;
}
