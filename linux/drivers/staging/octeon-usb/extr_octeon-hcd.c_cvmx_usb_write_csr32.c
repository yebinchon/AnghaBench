
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_hcd {int index; } ;


 int CVMX_USBNX_DMA0_INB_CHN0 (int ) ;
 int cvmx_read64_uint64 (int ) ;
 int cvmx_write64_uint32 (int,int ) ;

__attribute__((used)) static inline void cvmx_usb_write_csr32(struct octeon_hcd *usb,
     u64 address, u32 value)
{
 cvmx_write64_uint32(address ^ 4, value);
 cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index));
}
