
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int dummy; } ;


 int ECR_MODE_MASK ;
 int frob_econtrol (struct parport*,int ,int) ;

__attribute__((used)) static inline void frob_set_mode(struct parport *p, int mode)
{
 frob_econtrol(p, ECR_MODE_MASK, mode << 5);
}
