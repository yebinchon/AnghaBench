
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct cxgbit_sock {int dummy; } ;
struct cxgbi_task_tag_info {unsigned int idx; unsigned int npods; struct scatterlist* sgl; } ;
struct cxgbi_ppm {int dummy; } ;


 unsigned int ULPMEM_IDATA_MAX_NPPODS ;
 int cxgbit_ppod_write_idata (struct cxgbi_ppm*,struct cxgbit_sock*,struct cxgbi_task_tag_info*,unsigned int,unsigned int,struct scatterlist**,unsigned int*) ;

__attribute__((used)) static int
cxgbit_ddp_set_map(struct cxgbi_ppm *ppm, struct cxgbit_sock *csk,
     struct cxgbi_task_tag_info *ttinfo)
{
 unsigned int pidx = ttinfo->idx;
 unsigned int npods = ttinfo->npods;
 unsigned int i, cnt;
 struct scatterlist *sg = ttinfo->sgl;
 unsigned int offset = 0;
 int ret = 0;

 for (i = 0; i < npods; i += cnt, pidx += cnt) {
  cnt = npods - i;

  if (cnt > ULPMEM_IDATA_MAX_NPPODS)
   cnt = ULPMEM_IDATA_MAX_NPPODS;

  ret = cxgbit_ppod_write_idata(ppm, csk, ttinfo, pidx, cnt,
           &sg, &offset);
  if (ret < 0)
   break;
 }

 return ret;
}
