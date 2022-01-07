
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct ashmem_area* private_data; } ;
struct ashmem_area {int prot_mask; int name; int unpinned_list; } ;


 int ASHMEM_NAME_PREFIX ;
 int ASHMEM_NAME_PREFIX_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PROT_MASK ;
 int ashmem_area_cachep ;
 int generic_file_open (struct inode*,struct file*) ;
 struct ashmem_area* kmem_cache_zalloc (int ,int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int ashmem_open(struct inode *inode, struct file *file)
{
 struct ashmem_area *asma;
 int ret;

 ret = generic_file_open(inode, file);
 if (ret)
  return ret;

 asma = kmem_cache_zalloc(ashmem_area_cachep, GFP_KERNEL);
 if (!asma)
  return -ENOMEM;

 INIT_LIST_HEAD(&asma->unpinned_list);
 memcpy(asma->name, ASHMEM_NAME_PREFIX, ASHMEM_NAME_PREFIX_LEN);
 asma->prot_mask = PROT_MASK;
 file->private_data = asma;

 return 0;
}
