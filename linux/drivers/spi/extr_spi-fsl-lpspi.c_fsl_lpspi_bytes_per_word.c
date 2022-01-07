
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_BYTE ;
 int DIV_ROUND_UP (int const,int ) ;

__attribute__((used)) static int fsl_lpspi_bytes_per_word(const int bpw)
{
 return DIV_ROUND_UP(bpw, BITS_PER_BYTE);
}
