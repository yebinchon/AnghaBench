
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_session {int * sess_cmd_map; int sess_tag_pool; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int __GFP_RETRY_MAYFAIL ;
 int * kvcalloc (unsigned int,unsigned int,int) ;
 int kvfree (int *) ;
 int pr_err (char*,...) ;
 int sbitmap_queue_init_node (int *,unsigned int,int,int,int,int ) ;

int transport_alloc_session_tags(struct se_session *se_sess,
            unsigned int tag_num, unsigned int tag_size)
{
 int rc;

 se_sess->sess_cmd_map = kvcalloc(tag_size, tag_num,
      GFP_KERNEL | __GFP_RETRY_MAYFAIL);
 if (!se_sess->sess_cmd_map) {
  pr_err("Unable to allocate se_sess->sess_cmd_map\n");
  return -ENOMEM;
 }

 rc = sbitmap_queue_init_node(&se_sess->sess_tag_pool, tag_num, -1,
   0, GFP_KERNEL, NUMA_NO_NODE);
 if (rc < 0) {
  pr_err("Unable to init se_sess->sess_tag_pool,"
   " tag_num: %u\n", tag_num);
  kvfree(se_sess->sess_cmd_map);
  se_sess->sess_cmd_map = ((void*)0);
  return -ENOMEM;
 }

 return 0;
}
