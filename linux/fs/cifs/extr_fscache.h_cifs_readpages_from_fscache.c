
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int dummy; } ;


 int ENOBUFS ;

__attribute__((used)) static inline int cifs_readpages_from_fscache(struct inode *inode,
           struct address_space *mapping,
           struct list_head *pages,
           unsigned *nr_pages)
{
 return -ENOBUFS;
}
