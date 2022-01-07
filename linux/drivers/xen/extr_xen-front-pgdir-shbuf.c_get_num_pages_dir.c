
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_front_pgdir_shbuf {int num_pages; } ;


 int DIV_ROUND_UP (int ,int ) ;
 int XEN_NUM_GREFS_PER_PAGE ;

__attribute__((used)) static int get_num_pages_dir(struct xen_front_pgdir_shbuf *buf)
{
 return DIV_ROUND_UP(buf->num_pages, XEN_NUM_GREFS_PER_PAGE);
}
