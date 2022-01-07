
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nump; } ;
typedef TYPE_1__ m_pool_s ;
typedef int m_addr_t ;


 int MEMO_PAGE_ORDER ;
 int free_pages (int ,int ) ;

__attribute__((used)) static void ___mp0_freep(m_pool_s *mp, m_addr_t m)
{
 free_pages(m, MEMO_PAGE_ORDER);
 --mp->nump;
}
