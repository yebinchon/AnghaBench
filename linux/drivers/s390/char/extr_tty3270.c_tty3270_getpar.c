
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {scalar_t__* esc_par; } ;



__attribute__((used)) static inline int
tty3270_getpar(struct tty3270 *tp, int ix)
{
 return (tp->esc_par[ix] > 0) ? tp->esc_par[ix] : 1;
}
