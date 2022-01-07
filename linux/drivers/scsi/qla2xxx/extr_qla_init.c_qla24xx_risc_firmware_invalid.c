
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



bool qla24xx_risc_firmware_invalid(uint32_t *dword)
{
 return
     !(dword[4] | dword[5] | dword[6] | dword[7]) ||
     !(~dword[4] | ~dword[5] | ~dword[6] | ~dword[7]);
}
