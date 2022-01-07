
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {unsigned int rq_pagesz; unsigned int rq_offset; int rq_npages; unsigned int rq_tailsz; } ;



void rqst_page_get_length(struct smb_rqst *rqst, unsigned int page,
    unsigned int *len, unsigned int *offset)
{
 *len = rqst->rq_pagesz;
 *offset = (page == 0) ? rqst->rq_offset : 0;

 if (rqst->rq_npages == 1 || page == rqst->rq_npages-1)
  *len = rqst->rq_tailsz;
 else if (page == 0)
  *len = rqst->rq_pagesz - rqst->rq_offset;
}
