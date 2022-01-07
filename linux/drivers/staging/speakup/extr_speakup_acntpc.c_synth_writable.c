
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNTH_WRITABLE ;
 int inb_p (int ) ;
 int synth_port_control ;

__attribute__((used)) static inline bool synth_writable(void)
{
 return inb_p(synth_port_control) & SYNTH_WRITABLE;
}
