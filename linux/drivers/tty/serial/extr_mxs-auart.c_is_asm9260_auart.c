
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxs_auart_port {scalar_t__ devtype; } ;


 scalar_t__ ASM9260_AUART ;

__attribute__((used)) static inline int is_asm9260_auart(struct mxs_auart_port *s)
{
 return s->devtype == ASM9260_AUART;
}
