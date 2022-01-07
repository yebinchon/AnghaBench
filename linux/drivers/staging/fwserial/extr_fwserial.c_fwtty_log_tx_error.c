
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwtty_port {int dummy; } ;







 int fwtty_err_ratelimited (struct fwtty_port*,char*,...) ;

__attribute__((used)) static void fwtty_log_tx_error(struct fwtty_port *port, int rcode)
{
 switch (rcode) {
 case 128:
  fwtty_err_ratelimited(port, "card busy\n");
  break;
 case 132:
  fwtty_err_ratelimited(port, "bad unit addr or write length\n");
  break;
 case 130:
  fwtty_err_ratelimited(port, "failed rx\n");
  break;
 case 129:
  fwtty_err_ratelimited(port, "missing ack\n");
  break;
 case 131:
  fwtty_err_ratelimited(port, "remote busy\n");
  break;
 default:
  fwtty_err_ratelimited(port, "failed tx: %d\n", rcode);
 }
}
