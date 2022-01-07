
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb {int dummy; } ;
struct icm_pkg_header {int dummy; } ;


 int __icm_tr_device_connected (struct tb*,struct icm_pkg_header const*,int) ;

__attribute__((used)) static void
icm_tr_device_connected(struct tb *tb, const struct icm_pkg_header *hdr)
{
 __icm_tr_device_connected(tb, hdr, 0);
}
