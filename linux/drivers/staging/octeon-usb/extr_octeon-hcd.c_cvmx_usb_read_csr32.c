
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct octeon_hcd {int dummy; } ;


 int cvmx_read64_uint32 (int) ;

__attribute__((used)) static inline u32 cvmx_usb_read_csr32(struct octeon_hcd *usb, u64 address)
{
 return cvmx_read64_uint32(address ^ 4);
}
