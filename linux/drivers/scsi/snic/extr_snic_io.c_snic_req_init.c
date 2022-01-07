
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef size_t u8 ;
struct snic_sg_desc {int dummy; } ;
struct TYPE_6__ {scalar_t__ init_ctx; } ;
struct snic_req_info {size_t rq_pool_type; int req_len; TYPE_3__ hdr; struct snic_req_info* req; struct snic* snic; int start_time; } ;
struct snic_host_req {size_t rq_pool_type; int req_len; TYPE_3__ hdr; struct snic_host_req* req; struct snic* snic; int start_time; } ;
struct TYPE_4__ {int * sgl_cnt; int max_sgl; int alloc_fail; } ;
struct TYPE_5__ {TYPE_1__ io; } ;
struct snic {int shost; TYPE_2__ s_stats; int * req_pool; } ;


 int GFP_ATOMIC ;
 int SNIC_BUG_ON (int) ;
 int SNIC_HOST_ERR (int ,char*,size_t) ;
 int SNIC_MAX_SG_DESC_CNT ;
 int SNIC_REQ_CACHE_DFLT_SGL ;
 int SNIC_REQ_CACHE_MAX_SGL ;
 int SNIC_SCSI_DBG (int ,char*,struct snic_req_info*) ;
 int atomic64_inc (int *) ;
 int atomic64_read (int *) ;
 int atomic64_set (int *,int) ;
 int jiffies ;
 struct snic_req_info* mempool_alloc (int ,int ) ;
 int memset (struct snic_req_info*,int ,int) ;

struct snic_req_info *
snic_req_init(struct snic *snic, int sg_cnt)
{
 u8 typ;
 struct snic_req_info *rqi = ((void*)0);

 typ = (sg_cnt <= SNIC_REQ_CACHE_DFLT_SGL) ?
  SNIC_REQ_CACHE_DFLT_SGL : SNIC_REQ_CACHE_MAX_SGL;

 rqi = mempool_alloc(snic->req_pool[typ], GFP_ATOMIC);
 if (!rqi) {
  atomic64_inc(&snic->s_stats.io.alloc_fail);
  SNIC_HOST_ERR(snic->shost,
         "Failed to allocate memory from snic req pool id = %d\n",
         typ);
  return rqi;
 }

 memset(rqi, 0, sizeof(*rqi));
 rqi->rq_pool_type = typ;
 rqi->start_time = jiffies;
 rqi->req = (struct snic_host_req *) (rqi + 1);
 rqi->req_len = sizeof(struct snic_host_req);
 rqi->snic = snic;

 rqi->req = (struct snic_host_req *)(rqi + 1);

 if (sg_cnt == 0)
  goto end;

 rqi->req_len += (sg_cnt * sizeof(struct snic_sg_desc));

 if (sg_cnt > atomic64_read(&snic->s_stats.io.max_sgl))
  atomic64_set(&snic->s_stats.io.max_sgl, sg_cnt);

 SNIC_BUG_ON(sg_cnt > SNIC_MAX_SG_DESC_CNT);
 atomic64_inc(&snic->s_stats.io.sgl_cnt[sg_cnt - 1]);

end:
 memset(rqi->req, 0, rqi->req_len);


 rqi->req->hdr.init_ctx = (ulong) rqi;

 SNIC_SCSI_DBG(snic->shost, "Req_alloc:rqi = %p allocatd.\n", rqi);

 return rqi;
}
