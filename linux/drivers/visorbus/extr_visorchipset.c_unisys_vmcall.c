
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;


 int cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int unisys_vmcall(unsigned long tuple, unsigned long param)
{
 int result = 0;
 unsigned int cpuid_eax, cpuid_ebx, cpuid_ecx, cpuid_edx;
 unsigned long reg_ebx;
 unsigned long reg_ecx;

 reg_ebx = param & 0xFFFFFFFF;
 reg_ecx = param >> 32;
 cpuid(0x00000001, &cpuid_eax, &cpuid_ebx, &cpuid_ecx, &cpuid_edx);
 if (!(cpuid_ecx & 0x80000000))
  return -EPERM;
 __asm__ __volatile__(".byte 0x00f, 0x001, 0x0c1" : "=a"(result) :
        "a"(tuple), "b"(reg_ebx), "c"(reg_ecx));
 if (result)
  goto error;
 return 0;


error:
 switch (result) {
 case 128:
  return -EINVAL;
 case 129:
  return -ENODEV;
 default:
  return -EFAULT;
 }
}
