
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct boot_data {int Cryptor; } ;


 int CRYPT_STARTTERM ;

__attribute__((used)) static void
StartDecryption(struct boot_data *boot)
{
 boot->Cryptor = CRYPT_STARTTERM;
}
