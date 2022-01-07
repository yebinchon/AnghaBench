
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int scsi_qla_host_t ;


 int DUMP_PREFIX_NONE ;
 int KERN_CONT ;
 int min (unsigned int,scalar_t__) ;
 int print_hex_dump (int ,char*,int ,int,int,void const*,int ,int) ;
 int ql_dbg (scalar_t__,int *,scalar_t__,char*,...) ;
 int ql_mask_match (scalar_t__) ;

void
ql_dump_buffer(uint level, scsi_qla_host_t *vha, uint id, const void *buf,
        uint size)
{
 uint cnt;

 if (!ql_mask_match(level))
  return;

 ql_dbg(level, vha, id,
     "%-+5d  0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F\n", size);
 ql_dbg(level, vha, id,
     "----- -----------------------------------------------\n");
 for (cnt = 0; cnt < size; cnt += 16) {
  ql_dbg(level, vha, id, "%04x: ", cnt);
  print_hex_dump(KERN_CONT, "", DUMP_PREFIX_NONE, 16, 1,
          buf + cnt, min(16U, size - cnt), 0);
 }
}
