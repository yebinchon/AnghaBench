
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdomain_request_work {int work; int tb; int pkg; } ;
struct tb_xdp_header {int dummy; } ;
struct tb {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int kfree (struct xdomain_request_work*) ;
 struct xdomain_request_work* kmalloc (int,int ) ;
 int kmemdup (struct tb_xdp_header const*,size_t,int ) ;
 int schedule_work (int *) ;
 int tb_domain_get (struct tb*) ;
 int tb_xdp_handle_request ;

__attribute__((used)) static bool
tb_xdp_schedule_request(struct tb *tb, const struct tb_xdp_header *hdr,
   size_t size)
{
 struct xdomain_request_work *xw;

 xw = kmalloc(sizeof(*xw), GFP_KERNEL);
 if (!xw)
  return 0;

 INIT_WORK(&xw->work, tb_xdp_handle_request);
 xw->pkg = kmemdup(hdr, size, GFP_KERNEL);
 if (!xw->pkg) {
  kfree(xw);
  return 0;
 }
 xw->tb = tb_domain_get(tb);

 schedule_work(&xw->work);
 return 1;
}
