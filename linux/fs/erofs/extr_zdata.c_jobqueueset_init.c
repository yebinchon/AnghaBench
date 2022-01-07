
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * z_erofs_next_pcluster_t ;
struct z_erofs_unzip_io {int head; } ;
struct super_block {int dummy; } ;


 size_t JQ_BYPASS ;
 size_t JQ_SUBMIT ;
 struct z_erofs_unzip_io* jobqueue_init (struct super_block*,struct z_erofs_unzip_io*,int) ;
 int tagptr1_t ;
 void* tagptr_cast_ptr (int ) ;
 int tagptr_fold (int ,struct z_erofs_unzip_io*,int) ;

__attribute__((used)) static void *jobqueueset_init(struct super_block *sb,
         z_erofs_next_pcluster_t qtail[],
         struct z_erofs_unzip_io *q[],
         struct z_erofs_unzip_io *fgq,
         bool forcefg)
{




 q[JQ_BYPASS] = jobqueue_init(sb, fgq + JQ_BYPASS, 1);
 qtail[JQ_BYPASS] = &q[JQ_BYPASS]->head;

 q[JQ_SUBMIT] = jobqueue_init(sb, fgq + JQ_SUBMIT, forcefg);
 qtail[JQ_SUBMIT] = &q[JQ_SUBMIT]->head;

 return tagptr_cast_ptr(tagptr_fold(tagptr1_t, q[JQ_SUBMIT], !forcefg));
}
