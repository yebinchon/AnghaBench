
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int state; int flags; int mflags; int usrate; int dsrate; int dsattenuation; int usattenuation; int dsmargin; int usmargin; } ;
struct TYPE_4__ {TYPE_1__ phy; } ;
struct uea_softc {TYPE_2__ stats; int sync_q; int * dsp_firm; } ;


 int ATM_PHY_SIG_FOUND ;
 int E4_SA_DIAG ;
 int E4_SA_INFO ;
 int E4_SA_RATE ;
 int E4_SA_STAT ;
 int EAGAIN ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_LOOPBACK_OFF ;
 int UEA_SET_MODE ;
 int UPDATE_ATM_SIGNAL (int ) ;
 int UPDATE_ATM_STAT (int ,int) ;
 int link_rate ;
 int release_firmware (int *) ;
 int uea_dbg (int ,char*,...) ;
 int uea_enters (int ) ;
 int uea_info (int ,char*) ;
 int uea_read_cmv_e4 (struct uea_softc*,int,int ,int,int,int*) ;
 int uea_request (struct uea_softc*,int ,int ,int ,int *) ;
 int uea_set_bulk_timeout (struct uea_softc*,int) ;
 int uea_warn (int ,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int uea_stat_e4(struct uea_softc *sc)
{
 u32 data;
 u32 tmp_arr[2];
 int ret;

 uea_enters(INS_TO_USBDEV(sc));
 data = sc->stats.phy.state;


 ret = uea_read_cmv_e4(sc, 1, E4_SA_STAT, 0, 0, &sc->stats.phy.state);
 if (ret < 0)
  return ret;

 switch (sc->stats.phy.state) {
 case 0x0:
 case 0x1:
 case 0x3:
 case 0x4:
  uea_dbg(INS_TO_USBDEV(sc), "modem not yet "
      "synchronized\n");
  return 0;
 case 0x5:
 case 0x6:
 case 0x9:
 case 0xa:
  uea_dbg(INS_TO_USBDEV(sc), "modem initializing\n");
  return 0;
 case 0x2:
  uea_info(INS_TO_USBDEV(sc), "modem synchronization "
    "failed (may be try other cmv/dsp)\n");
  return -EAGAIN;
 case 0x7:
  break;
 default:
  uea_warn(INS_TO_USBDEV(sc), "unknown state: %x\n",
      sc->stats.phy.state);
  return 0;
 }

 if (data != 7) {
  uea_request(sc, UEA_SET_MODE, UEA_LOOPBACK_OFF, 0, ((void*)0));
  uea_info(INS_TO_USBDEV(sc), "modem operational\n");




  release_firmware(sc->dsp_firm);
  sc->dsp_firm = ((void*)0);
 }




 UPDATE_ATM_SIGNAL(ATM_PHY_SIG_FOUND);


 wake_up(&sc->sync_q);






 ret = uea_read_cmv_e4(sc, 1, E4_SA_DIAG, 0, 0, &sc->stats.phy.flags);
 if (ret < 0)
  return ret;
 sc->stats.phy.mflags |= sc->stats.phy.flags;




 if (sc->stats.phy.flags) {
  uea_dbg(INS_TO_USBDEV(sc), "Stat flag = 0x%x\n",
         sc->stats.phy.flags);
  if (sc->stats.phy.flags & 1)
   return -EAGAIN;
  if (sc->stats.phy.flags & 0x4000)
   return -EAGAIN;
  return 0;
 }


 ret = uea_read_cmv_e4(sc, 4, E4_SA_RATE, 0, 0, tmp_arr);
 if (ret < 0)
  return ret;
 data = (tmp_arr[0]) ? tmp_arr[0] : tmp_arr[1];
 sc->stats.phy.usrate = data / 1000;

 ret = uea_read_cmv_e4(sc, 4, E4_SA_RATE, 1, 0, tmp_arr);
 if (ret < 0)
  return ret;
 data = (tmp_arr[0]) ? tmp_arr[0] : tmp_arr[1];
 uea_set_bulk_timeout(sc, data / 1000);
 sc->stats.phy.dsrate = data / 1000;
 UPDATE_ATM_STAT(link_rate, sc->stats.phy.dsrate * 1000 / 424);

 ret = uea_read_cmv_e4(sc, 1, E4_SA_INFO, 68, 1, &data);
 if (ret < 0)
  return ret;
 sc->stats.phy.dsattenuation = data / 10;

 ret = uea_read_cmv_e4(sc, 1, E4_SA_INFO, 69, 1, &data);
 if (ret < 0)
  return ret;
 sc->stats.phy.usattenuation = data / 10;

 ret = uea_read_cmv_e4(sc, 1, E4_SA_INFO, 68, 3, &data);
 if (ret < 0)
  return ret;
 sc->stats.phy.dsmargin = data / 2;

 ret = uea_read_cmv_e4(sc, 1, E4_SA_INFO, 69, 3, &data);
 if (ret < 0)
  return ret;
 sc->stats.phy.usmargin = data / 10;

 return 0;
}
