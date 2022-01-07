
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_priv {scalar_t__ inbuf; } ;
struct hvsi_control {int word; int verb; } ;


 int HVSI_TSCD ;


 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int hvsi_cd_change (struct hvsi_priv*,int) ;
 int hvsi_start_handshake (struct hvsi_priv*) ;

__attribute__((used)) static void hvsi_got_control(struct hvsi_priv *pv)
{
 struct hvsi_control *pkt = (struct hvsi_control *)pv->inbuf;

 switch (be16_to_cpu(pkt->verb)) {
 case 129:

  hvsi_start_handshake(pv);
  break;
 case 128:

  hvsi_cd_change(pv, be32_to_cpu(pkt->word) & HVSI_TSCD);
  break;
 }
}
