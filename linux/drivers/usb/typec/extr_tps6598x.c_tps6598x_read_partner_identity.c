
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tps6598x_rx_identity_reg {int identity; } ;
struct tps6598x {int partner_identity; } ;
typedef int id ;


 int TPS_REG_RX_IDENTITY_SOP ;
 int tps6598x_block_read (struct tps6598x*,int ,struct tps6598x_rx_identity_reg*,int) ;

__attribute__((used)) static int tps6598x_read_partner_identity(struct tps6598x *tps)
{
 struct tps6598x_rx_identity_reg id;
 int ret;

 ret = tps6598x_block_read(tps, TPS_REG_RX_IDENTITY_SOP,
      &id, sizeof(id));
 if (ret)
  return ret;

 tps->partner_identity = id.identity;

 return 0;
}
