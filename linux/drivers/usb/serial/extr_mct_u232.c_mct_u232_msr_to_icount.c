
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_icount {int dcd; int rng; int cts; int dsr; } ;


 unsigned char MCT_U232_MSR_DCD ;
 unsigned char MCT_U232_MSR_DCTS ;
 unsigned char MCT_U232_MSR_DDSR ;
 unsigned char MCT_U232_MSR_DRI ;

__attribute__((used)) static void mct_u232_msr_to_icount(struct async_icount *icount,
      unsigned char msr)
{

 if (msr & MCT_U232_MSR_DDSR)
  icount->dsr++;
 if (msr & MCT_U232_MSR_DCTS)
  icount->cts++;
 if (msr & MCT_U232_MSR_DRI)
  icount->rng++;
 if (msr & MCT_U232_MSR_DCD)
  icount->dcd++;
}
