
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_end_io; } ;


 int GFP_KERNEL ;
 struct bio* bio_kmalloc (int ,int) ;
 int pr_err (char*) ;
 int pscsi_bi_endio ;

__attribute__((used)) static inline struct bio *pscsi_get_bio(int nr_vecs)
{
 struct bio *bio;




 bio = bio_kmalloc(GFP_KERNEL, nr_vecs);
 if (!bio) {
  pr_err("PSCSI: bio_kmalloc() failed\n");
  return ((void*)0);
 }
 bio->bi_end_io = pscsi_bi_endio;

 return bio;
}
