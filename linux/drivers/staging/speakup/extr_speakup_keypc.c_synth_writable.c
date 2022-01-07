
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UART_RX ;
 int inb_p (scalar_t__) ;
 scalar_t__ synth_port ;

__attribute__((used)) static inline bool synth_writable(void)
{
 return (inb_p(synth_port + UART_RX) & 0x10) != 0;
}
