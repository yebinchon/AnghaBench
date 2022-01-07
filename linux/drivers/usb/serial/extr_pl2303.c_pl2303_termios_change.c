
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int c_iflag; scalar_t__* c_cc; } ;


 int IXANY ;
 int IXON ;
 size_t VSTART ;
 size_t VSTOP ;
 scalar_t__ tty_termios_hw_change (struct ktermios const*,struct ktermios const*) ;

__attribute__((used)) static bool pl2303_termios_change(const struct ktermios *a, const struct ktermios *b)
{
 bool ixon_change;

 ixon_change = ((a->c_iflag ^ b->c_iflag) & (IXON | IXANY)) ||
   a->c_cc[VSTART] != b->c_cc[VSTART] ||
   a->c_cc[VSTOP] != b->c_cc[VSTOP];

 return tty_termios_hw_change(a, b) || ixon_change;
}
