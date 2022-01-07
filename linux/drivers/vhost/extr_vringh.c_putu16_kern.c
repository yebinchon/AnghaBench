
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vringh {int dummy; } ;
typedef int __virtio16 ;


 int WRITE_ONCE (int ,int ) ;
 int cpu_to_vringh16 (struct vringh const*,int ) ;

__attribute__((used)) static inline int putu16_kern(const struct vringh *vrh, __virtio16 *p, u16 val)
{
 WRITE_ONCE(*p, cpu_to_vringh16(vrh, val));
 return 0;
}
