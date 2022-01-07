
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_TX_AC_BE ;
 int CONF_TX_AC_BK ;
 int CONF_TX_AC_VI ;
 int CONF_TX_AC_VO ;

__attribute__((used)) static inline int wl1271_tx_get_queue(int queue)
{
 switch (queue) {
 case 0:
  return CONF_TX_AC_VO;
 case 1:
  return CONF_TX_AC_VI;
 case 2:
  return CONF_TX_AC_BE;
 case 3:
  return CONF_TX_AC_BK;
 default:
  return CONF_TX_AC_BE;
 }
}
