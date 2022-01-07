
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 scalar_t__ I_IUTF8 (struct tty_struct*) ;
 scalar_t__ is_utf8_continuation (unsigned char) ;

__attribute__((used)) static inline int is_continuation(unsigned char c, struct tty_struct *tty)
{
 return I_IUTF8(tty) && is_utf8_continuation(c);
}
