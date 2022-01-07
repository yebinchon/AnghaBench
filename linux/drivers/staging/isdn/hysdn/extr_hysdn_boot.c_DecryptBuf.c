
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* BootBuf; } ;
struct boot_data {int Cryptor; TYPE_1__ buf; } ;


 int CRYPT_FEEDTERM ;

__attribute__((used)) static void
DecryptBuf(struct boot_data *boot, int cnt)
{
 unsigned char *bufp = boot->buf.BootBuf;

 while (cnt--) {
  boot->Cryptor = (boot->Cryptor >> 1) ^ ((boot->Cryptor & 1U) ? CRYPT_FEEDTERM : 0);
  *bufp++ ^= (unsigned char)boot->Cryptor;
 }
}
