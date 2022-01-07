
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_beacon_transmit {int enable_beaconing; } ;
struct cw1200_common {int dummy; } ;


 int wsm_beacon_transmit (struct cw1200_common*,struct wsm_beacon_transmit*) ;

__attribute__((used)) static int cw1200_enable_beaconing(struct cw1200_common *priv,
       bool enable)
{
 struct wsm_beacon_transmit transmit = {
  .enable_beaconing = enable,
 };

 return wsm_beacon_transmit(priv, &transmit);
}
