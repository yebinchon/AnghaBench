
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int port; } ;


 int VT102ID ;
 int respond_string (int ,int ) ;

__attribute__((used)) static inline void respond_ID(struct tty_struct *tty)
{
 respond_string(VT102ID, tty->port);
}
