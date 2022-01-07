
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct CPRBX {int cprb_len; int cprb_ver_id; size_t rpl_msgbl; int * rpl_parmb; int * req_parmb; int func_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kcalloc (int,size_t,int ) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static int alloc_and_prep_cprbmem(size_t paramblen,
      u8 **pcprbmem,
      struct CPRBX **preqCPRB,
      struct CPRBX **prepCPRB)
{
 u8 *cprbmem;
 size_t cprbplusparamblen = sizeof(struct CPRBX) + paramblen;
 struct CPRBX *preqcblk, *prepcblk;





 cprbmem = kcalloc(2, cprbplusparamblen, GFP_KERNEL);
 if (!cprbmem)
  return -ENOMEM;

 preqcblk = (struct CPRBX *) cprbmem;
 prepcblk = (struct CPRBX *) (cprbmem + cprbplusparamblen);


 preqcblk->cprb_len = sizeof(struct CPRBX);
 preqcblk->cprb_ver_id = 0x02;
 memcpy(preqcblk->func_id, "T2", 2);
 preqcblk->rpl_msgbl = cprbplusparamblen;
 if (paramblen) {
  preqcblk->req_parmb =
   ((u8 *) preqcblk) + sizeof(struct CPRBX);
  preqcblk->rpl_parmb =
   ((u8 *) prepcblk) + sizeof(struct CPRBX);
 }

 *pcprbmem = cprbmem;
 *preqCPRB = preqcblk;
 *prepCPRB = prepcblk;

 return 0;
}
