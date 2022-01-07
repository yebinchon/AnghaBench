
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_front_pgdir_shbuf {scalar_t__ num_pages; scalar_t__ num_grefs; } ;


 scalar_t__ get_num_pages_dir (struct xen_front_pgdir_shbuf*) ;

__attribute__((used)) static void guest_calc_num_grefs(struct xen_front_pgdir_shbuf *buf)
{




 buf->num_grefs = get_num_pages_dir(buf) + buf->num_pages;
}
