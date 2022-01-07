
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_type {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int aqm; } ;


 int AP_DBF (int ,char*,int) ;
 int DBF_DEBUG ;
 size_t EINVAL ;
 int ap_domain_index ;
 int ap_domain_lock ;
 int ap_max_domain_id ;
 TYPE_1__ ap_perms ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sscanf (char const*,char*,int*) ;
 int test_bit_inv (int,int ) ;

__attribute__((used)) static ssize_t ap_domain_store(struct bus_type *bus,
          const char *buf, size_t count)
{
 int domain;

 if (sscanf(buf, "%i\n", &domain) != 1 ||
     domain < 0 || domain > ap_max_domain_id ||
     !test_bit_inv(domain, ap_perms.aqm))
  return -EINVAL;
 spin_lock_bh(&ap_domain_lock);
 ap_domain_index = domain;
 spin_unlock_bh(&ap_domain_lock);

 AP_DBF(DBF_DEBUG, "stored new default domain=%d\n", domain);

 return count;
}
