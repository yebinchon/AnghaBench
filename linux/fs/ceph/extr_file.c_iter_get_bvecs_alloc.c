
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iov_iter {int dummy; } ;
struct bio_vec {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ENOMEM ;
 int GFP_KERNEL ;
 int INT_MAX ;
 int __GFP_ZERO ;
 scalar_t__ __iter_get_bvecs (struct iov_iter*,size_t,struct bio_vec*) ;
 size_t iov_iter_count (struct iov_iter*) ;
 int iov_iter_npages (struct iov_iter*,int ) ;
 int iov_iter_reexpand (struct iov_iter*,size_t) ;
 int iov_iter_truncate (struct iov_iter*,size_t) ;
 int kvfree (struct bio_vec*) ;
 struct bio_vec* kvmalloc_array (int,int,int) ;

__attribute__((used)) static ssize_t iter_get_bvecs_alloc(struct iov_iter *iter, size_t maxsize,
        struct bio_vec **bvecs, int *num_bvecs)
{
 struct bio_vec *bv;
 size_t orig_count = iov_iter_count(iter);
 ssize_t bytes;
 int npages;

 iov_iter_truncate(iter, maxsize);
 npages = iov_iter_npages(iter, INT_MAX);
 iov_iter_reexpand(iter, orig_count);





 bv = kvmalloc_array(npages, sizeof(*bv), GFP_KERNEL | __GFP_ZERO);
 if (!bv)
  return -ENOMEM;

 bytes = __iter_get_bvecs(iter, maxsize, bv);
 if (bytes < 0) {



  kvfree(bv);
  return bytes;
 }

 *bvecs = bv;
 *num_bvecs = npages;
 return bytes;
}
