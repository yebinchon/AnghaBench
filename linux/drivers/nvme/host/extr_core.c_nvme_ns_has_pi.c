
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_pi_tuple {int dummy; } ;
struct nvme_ns {int ms; scalar_t__ pi_type; } ;



__attribute__((used)) static inline bool nvme_ns_has_pi(struct nvme_ns *ns)
{
 return ns->pi_type && ns->ms == sizeof(struct t10_pi_tuple);
}
