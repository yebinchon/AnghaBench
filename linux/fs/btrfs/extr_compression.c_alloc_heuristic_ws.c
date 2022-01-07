
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct heuristic_ws {struct list_head list; void* bucket_b; void* bucket; int sample; } ;


 int BUCKET_SIZE ;
 int ENOMEM ;
 struct list_head* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int MAX_SAMPLE_SIZE ;
 int free_heuristic_ws (struct list_head*) ;
 void* kcalloc (int ,int,int ) ;
 int kvmalloc (int ,int ) ;
 struct heuristic_ws* kzalloc (int,int ) ;

__attribute__((used)) static struct list_head *alloc_heuristic_ws(unsigned int level)
{
 struct heuristic_ws *ws;

 ws = kzalloc(sizeof(*ws), GFP_KERNEL);
 if (!ws)
  return ERR_PTR(-ENOMEM);

 ws->sample = kvmalloc(MAX_SAMPLE_SIZE, GFP_KERNEL);
 if (!ws->sample)
  goto fail;

 ws->bucket = kcalloc(BUCKET_SIZE, sizeof(*ws->bucket), GFP_KERNEL);
 if (!ws->bucket)
  goto fail;

 ws->bucket_b = kcalloc(BUCKET_SIZE, sizeof(*ws->bucket_b), GFP_KERNEL);
 if (!ws->bucket_b)
  goto fail;

 INIT_LIST_HEAD(&ws->list);
 return &ws->list;
fail:
 free_heuristic_ws(&ws->list);
 return ERR_PTR(-ENOMEM);
}
