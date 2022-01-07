
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vrc4173_socket_t ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;


 int BV_DETECT_GOOD ;
 int BV_DETECT_MASK ;
 int BV_DETECT_WARN ;
 int CARD_DETECT1 ;
 int CARD_DETECT2 ;
 int CARD_PWR ;
 int CARD_TYPE_IO ;
 int CARD_WP ;
 int CB_CARD_DT ;
 int CCD10 ;
 int CCD20 ;
 int IF_STATUS ;
 int INT_GEN_CNT ;
 int READY ;
 int SKT_PRE_STATE ;
 int SS_3VCARD ;
 int SS_BATDEAD ;
 int SS_BATWARN ;
 int SS_CARDBUS ;
 int SS_DETECT ;
 int SS_PENDING ;
 int SS_POWERON ;
 int SS_READY ;
 int SS_STSCHG ;
 int SS_WRPROT ;
 int SS_XVCARD ;
 int STSCHG ;
 int VOL_3V_CARD_DT ;
 int VOL_5V_CARD_DT ;
 int VOL_XV_CARD_DT ;
 int VOL_YV_CARD_DT ;
 int cardbus_socket_readl (int *,int ) ;
 int * cardu_sockets ;
 int exca_readb (int *,int ) ;

__attribute__((used)) static int cardu_get_status(unsigned int sock, u_int *value)
{
 vrc4173_socket_t *socket = &cardu_sockets[sock];
 uint32_t state;
 uint8_t status;
 u_int val = 0;

 status = exca_readb(socket, IF_STATUS);
 if (status & CARD_PWR) val |= SS_POWERON;
 if (status & READY) val |= SS_READY;
 if (status & CARD_WP) val |= SS_WRPROT;
 if ((status & (CARD_DETECT1|CARD_DETECT2)) == (CARD_DETECT1|CARD_DETECT2))
  val |= SS_DETECT;
 if (exca_readb(socket, INT_GEN_CNT) & CARD_TYPE_IO) {
  if (status & STSCHG) val |= SS_STSCHG;
 } else {
  status &= BV_DETECT_MASK;
  if (status != BV_DETECT_GOOD) {
   if (status == BV_DETECT_WARN) val |= SS_BATWARN;
   else val |= SS_BATDEAD;
  }
 }

 state = cardbus_socket_readl(socket, SKT_PRE_STATE);
 if (state & VOL_3V_CARD_DT) val |= SS_3VCARD;
 if (state & VOL_XV_CARD_DT) val |= SS_XVCARD;
 if (state & CB_CARD_DT) val |= SS_CARDBUS;
 if (!(state &
       (VOL_YV_CARD_DT|VOL_XV_CARD_DT|VOL_3V_CARD_DT|VOL_5V_CARD_DT|CCD20|CCD10)))
  val |= SS_PENDING;

 *value = val;

 return 0;
}
