
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {scalar_t__ cmv_ack; } ;


 int ACK_TIMEOUT ;
 int ETIMEDOUT ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int jiffies_to_msecs (int) ;
 int uea_dbg (int ,char*,int ) ;
 int uea_wait (struct uea_softc*,scalar_t__,int ) ;

__attribute__((used)) static inline int wait_cmv_ack(struct uea_softc *sc)
{
 int ret = uea_wait(sc, sc->cmv_ack , ACK_TIMEOUT);

 sc->cmv_ack = 0;

 uea_dbg(INS_TO_USBDEV(sc), "wait_event_timeout : %d ms\n",
   jiffies_to_msecs(ret));

 if (ret < 0)
  return ret;

 return (ret == 0) ? -ETIMEDOUT : 0;
}
