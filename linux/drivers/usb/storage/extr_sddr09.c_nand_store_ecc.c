
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void nand_store_ecc(unsigned char *data, unsigned char *ecc) {
 memcpy(data, ecc, 3);
}
