
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ parmsize; void (* event_callback ) (struct adapter*,size_t*) ;} ;


 size_t H2C_SUCCESS ;
 size_t MAX_C2HEVT ;
 int RT_TRACE (int ,int ,char*) ;
 int _drv_err_ ;
 int _module_rtl871x_cmd_c_ ;
 TYPE_1__* wlanevents ;

u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
{
 u8 evt_code;
 u16 evt_sz;
 uint *peventbuf;
 void (*event_callback)(struct adapter *dev, u8 *pbuf);

 peventbuf = (uint *)pbuf;
 evt_sz = (u16)(*peventbuf & 0xffff);
 evt_code = (u8)((*peventbuf>>16) & 0xff);


 if (evt_code >= MAX_C2HEVT) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nEvent Code(%d) mismatch!\n", evt_code));
  goto _abort_event_;
 }


 if ((wlanevents[evt_code].parmsize != 0) &&
     (wlanevents[evt_code].parmsize != evt_sz)) {
  RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_,
    ("\nEvent(%d) Parm Size mismatch (%d vs %d)!\n",
    evt_code, wlanevents[evt_code].parmsize, evt_sz));
  goto _abort_event_;
 }

 peventbuf += 2;

 if (peventbuf) {
  event_callback = wlanevents[evt_code].event_callback;
  event_callback(padapter, (u8 *)peventbuf);
 }

_abort_event_:
 return H2C_SUCCESS;
}
