
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int nand_compare_ecc(unsigned char *data, unsigned char *ecc)
{
 return (data[0] == ecc[0] && data[1] == ecc[1] && data[2] == ecc[2]);
}
