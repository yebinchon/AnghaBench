
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tb_nhi {scalar_t__ iobase; } ;


 scalar_t__ DIV_ROUND_UP (int,int) ;
 unsigned int MSIX_MAX_VECS ;
 int NSEC_PER_USEC ;
 scalar_t__ REG_INT_THROTTLING_RATE ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void nhi_enable_int_throttling(struct tb_nhi *nhi)
{

 u32 throttle = DIV_ROUND_UP(128 * NSEC_PER_USEC, 256);
 unsigned int i;





 for (i = 0; i < MSIX_MAX_VECS; i++) {
  u32 reg = REG_INT_THROTTLING_RATE + i * 4;
  iowrite32(throttle, nhi->iobase + reg);
 }
}
