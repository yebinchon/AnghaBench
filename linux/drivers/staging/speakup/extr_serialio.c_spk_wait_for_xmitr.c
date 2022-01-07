
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spk_synth {int long_name; scalar_t__ alive; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;


 scalar_t__ NUM_DISABLE_TIMEOUTS ;
 int SPK_CTS_TIMEOUT ;
 int SPK_XMITR_TIMEOUT ;
 scalar_t__ UART_MSR ;
 int UART_MSR_CTS ;
 int inb_p (scalar_t__) ;
 int pr_warn (char*,int ) ;
 TYPE_1__ speakup_info ;
 int speakup_start_ttys () ;
 scalar_t__ spk_serial_tx_busy () ;
 scalar_t__ timeouts ;
 int udelay (int) ;

int spk_wait_for_xmitr(struct spk_synth *in_synth)
{
 int tmout = SPK_XMITR_TIMEOUT;

 if ((in_synth->alive) && (timeouts >= NUM_DISABLE_TIMEOUTS)) {
  pr_warn("%s: too many timeouts, deactivating speakup\n",
   in_synth->long_name);
  in_synth->alive = 0;




  speakup_start_ttys();
  timeouts = 0;
  return 0;
 }
 while (spk_serial_tx_busy()) {
  if (--tmout == 0) {
   pr_warn("%s: timed out (tx busy)\n",
    in_synth->long_name);
   timeouts++;
   return 0;
  }
  udelay(1);
 }
 tmout = SPK_CTS_TIMEOUT;
 while (!((inb_p(speakup_info.port_tts + UART_MSR)) & UART_MSR_CTS)) {

  if (--tmout == 0) {
   timeouts++;
   return 0;
  }
  udelay(1);
 }
 timeouts = 0;
 return 1;
}
