
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aac_dev {int max_msix; int msix_counter; } ;


 int atomic_inc_return (int *) ;

__attribute__((used)) static inline u32 aac_get_vector(struct aac_dev *dev)
{
 return atomic_inc_return(&dev->msix_counter)%dev->max_msix;
}
