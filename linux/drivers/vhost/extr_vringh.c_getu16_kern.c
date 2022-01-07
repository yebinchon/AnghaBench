
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vringh {int dummy; } ;
typedef int __virtio16 ;


 int READ_ONCE (int const) ;
 int vringh16_to_cpu (struct vringh const*,int ) ;

__attribute__((used)) static inline int getu16_kern(const struct vringh *vrh,
         u16 *val, const __virtio16 *p)
{
 *val = vringh16_to_cpu(vrh, READ_ONCE(*p));
 return 0;
}
