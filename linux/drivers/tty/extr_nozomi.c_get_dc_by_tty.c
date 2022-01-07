
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {size_t index; } ;
struct nozomi {int dummy; } ;


 size_t MAX_PORT ;
 struct nozomi** ndevs ;

__attribute__((used)) static inline struct nozomi *get_dc_by_tty(const struct tty_struct *tty)
{
 return tty ? ndevs[tty->index / MAX_PORT] : ((void*)0);
}
