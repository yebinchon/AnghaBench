
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct olpc_xo175_ec {int dummy; } ;
typedef int nonce ;


 int olpc_xo175_ec_send_command (struct olpc_xo175_ec*,int*,int) ;

__attribute__((used)) static void olpc_xo175_ec_read_packet(struct olpc_xo175_ec *priv)
{
 u8 nonce[] = {0xA5, 0x5A};

 olpc_xo175_ec_send_command(priv, nonce, sizeof(nonce));
}
