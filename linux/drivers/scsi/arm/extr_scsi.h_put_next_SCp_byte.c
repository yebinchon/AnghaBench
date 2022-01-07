
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_pointer {unsigned char* ptr; int this_residual; } ;



__attribute__((used)) static inline void put_next_SCp_byte(struct scsi_pointer *SCp, unsigned char c)
{
 *SCp->ptr = c;
 SCp->ptr += 1;
 SCp->this_residual -= 1;
}
