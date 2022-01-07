
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int CAM_POLLINIG ;
 int REG_CAMCMD ;
 int REG_CAMREAD ;
 int RWCAM ;
 int rtw_read32 (struct adapter*,int ) ;
 int rtw_write32 (struct adapter*,int ,int) ;

__attribute__((used)) static u32 _ReadCAM(struct adapter *padapter, u32 addr)
{
 u32 count = 0, cmd;
 cmd = CAM_POLLINIG | addr;
 rtw_write32(padapter, RWCAM, cmd);

 do {
  if (0 == (rtw_read32(padapter, REG_CAMCMD) & CAM_POLLINIG))
   break;
 } while (count++ < 100);

 return rtw_read32(padapter, REG_CAMREAD);
}
