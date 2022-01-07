
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct esas2r_sg_context {scalar_t__ cur_offset; } ;


 int * esas2r_buffered_ioctl ;
 scalar_t__ esas2r_buffered_ioctl_addr ;
 scalar_t__ esas2r_buffered_ioctl_size ;

__attribute__((used)) static u32 get_physaddr_buffered_ioctl(struct esas2r_sg_context *sgc,
           u64 *addr)
{
 int offset = (u8 *)sgc->cur_offset - esas2r_buffered_ioctl;

 (*addr) = esas2r_buffered_ioctl_addr + offset;
 return esas2r_buffered_ioctl_size - offset;
}
