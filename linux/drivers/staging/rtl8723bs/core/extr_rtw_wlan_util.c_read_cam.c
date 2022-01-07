
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;


 int _ReadCAM (struct adapter*,int) ;
 int memcpy (int*,int*,int) ;

void read_cam(struct adapter *padapter, u8 entry, u8 *get_key)
{
 u32 j, addr, cmd;
 addr = entry << 3;


 for (j = 0; j < 6; j++) {
  cmd = _ReadCAM(padapter, addr+j);

  if (j > 1)
   memcpy(get_key+(j-2)*4, &cmd, 4);
 }

}
