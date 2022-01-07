
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int dummy; } ;
struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;
struct icm_fr_event_xdomain_disconnected {int remote_uuid; } ;


 int remove_xdomain (struct tb_xdomain*) ;
 struct tb_xdomain* tb_xdomain_find_by_uuid (struct tb*,int *) ;
 int tb_xdomain_put (struct tb_xdomain*) ;

__attribute__((used)) static void
icm_fr_xdomain_disconnected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 const struct icm_fr_event_xdomain_disconnected *pkg =
  (const struct icm_fr_event_xdomain_disconnected *)hdr;
 struct tb_xdomain *xd;






 xd = tb_xdomain_find_by_uuid(tb, &pkg->remote_uuid);
 if (xd) {
  remove_xdomain(xd);
  tb_xdomain_put(xd);
 }
}
