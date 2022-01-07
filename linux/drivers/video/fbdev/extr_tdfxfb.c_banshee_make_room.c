
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_par {int dummy; } ;


 int STATUS ;
 int cpu_relax () ;
 int tdfx_inl (struct tdfx_par*,int ) ;

__attribute__((used)) static inline void banshee_make_room(struct tdfx_par *par, int size)
{


 while ((tdfx_inl(par, STATUS) & 0x1f) < size - 1)
  cpu_relax();
}
