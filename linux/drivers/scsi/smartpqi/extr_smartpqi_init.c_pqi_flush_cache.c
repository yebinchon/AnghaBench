
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
struct bmic_flush_cache {int shutdown_event; } ;
typedef enum bmic_flush_cache_shutdown_event { ____Placeholder_bmic_flush_cache_shutdown_event } bmic_flush_cache_shutdown_event ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int SA_FLUSH_CACHE ;
 int kfree (struct bmic_flush_cache*) ;
 struct bmic_flush_cache* kzalloc (int,int ) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int pqi_send_ctrl_raid_request (struct pqi_ctrl_info*,int ,struct bmic_flush_cache*,int) ;

__attribute__((used)) static int pqi_flush_cache(struct pqi_ctrl_info *ctrl_info,
 enum bmic_flush_cache_shutdown_event shutdown_event)
{
 int rc;
 struct bmic_flush_cache *flush_cache;





 if (pqi_ctrl_offline(ctrl_info))
  return -ENXIO;

 flush_cache = kzalloc(sizeof(*flush_cache), GFP_KERNEL);
 if (!flush_cache)
  return -ENOMEM;

 flush_cache->shutdown_event = shutdown_event;

 rc = pqi_send_ctrl_raid_request(ctrl_info, SA_FLUSH_CACHE, flush_cache,
  sizeof(*flush_cache));

 kfree(flush_cache);

 return rc;
}
