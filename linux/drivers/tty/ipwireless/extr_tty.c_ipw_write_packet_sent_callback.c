
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_tty {unsigned int tx_bytes_queued; } ;



__attribute__((used)) static void ipw_write_packet_sent_callback(void *callback_data,
        unsigned int packet_length)
{
 struct ipw_tty *tty = callback_data;





 tty->tx_bytes_queued -= packet_length;
}
