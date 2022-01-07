
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct qbman_eq_desc {int dummy; } ;
struct dpaa2_io {int swp; } ;
struct dpaa2_fd {int dummy; } ;


 int ENODEV ;
 int qbman_eq_desc_clear (struct qbman_eq_desc*) ;
 int qbman_eq_desc_set_no_orp (struct qbman_eq_desc*,int ) ;
 int qbman_eq_desc_set_qd (struct qbman_eq_desc*,int ,int ,int ) ;
 int qbman_swp_enqueue (int ,struct qbman_eq_desc*,struct dpaa2_fd const*) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;

int dpaa2_io_service_enqueue_qd(struct dpaa2_io *d,
    u32 qdid, u8 prio, u16 qdbin,
    const struct dpaa2_fd *fd)
{
 struct qbman_eq_desc ed;

 d = service_select(d);
 if (!d)
  return -ENODEV;

 qbman_eq_desc_clear(&ed);
 qbman_eq_desc_set_no_orp(&ed, 0);
 qbman_eq_desc_set_qd(&ed, qdid, qdbin, prio);

 return qbman_swp_enqueue(d->swp, &ed, fd);
}
