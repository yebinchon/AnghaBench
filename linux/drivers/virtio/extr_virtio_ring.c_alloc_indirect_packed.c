
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vring_packed_desc {int dummy; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 struct vring_packed_desc* kmalloc_array (unsigned int,int,int ) ;

__attribute__((used)) static struct vring_packed_desc *alloc_indirect_packed(unsigned int total_sg,
             gfp_t gfp)
{
 struct vring_packed_desc *desc;






 gfp &= ~__GFP_HIGHMEM;

 desc = kmalloc_array(total_sg, sizeof(struct vring_packed_desc), gfp);

 return desc;
}
