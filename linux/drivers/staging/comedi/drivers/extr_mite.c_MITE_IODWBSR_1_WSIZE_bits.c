
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ilog2 (unsigned int) ;

__attribute__((used)) static unsigned int MITE_IODWBSR_1_WSIZE_bits(unsigned int size)
{
 return (ilog2(size) - 1) & 0x1f;
}
