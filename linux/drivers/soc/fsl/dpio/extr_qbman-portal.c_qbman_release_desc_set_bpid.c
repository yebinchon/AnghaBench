
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qbman_release_desc {int bpid; } ;


 int cpu_to_le16 (int ) ;

void qbman_release_desc_set_bpid(struct qbman_release_desc *d, u16 bpid)
{
 d->bpid = cpu_to_le16(bpid);
}
