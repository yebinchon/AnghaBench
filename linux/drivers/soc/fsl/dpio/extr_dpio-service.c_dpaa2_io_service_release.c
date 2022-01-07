
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct qbman_release_desc {int dummy; } ;
struct dpaa2_io {int swp; } ;


 int ENODEV ;
 int qbman_release_desc_clear (struct qbman_release_desc*) ;
 int qbman_release_desc_set_bpid (struct qbman_release_desc*,int ) ;
 int qbman_swp_release (int ,struct qbman_release_desc*,int const*,unsigned int) ;
 struct dpaa2_io* service_select (struct dpaa2_io*) ;

int dpaa2_io_service_release(struct dpaa2_io *d,
        u16 bpid,
        const u64 *buffers,
        unsigned int num_buffers)
{
 struct qbman_release_desc rd;

 d = service_select(d);
 if (!d)
  return -ENODEV;

 qbman_release_desc_clear(&rd);
 qbman_release_desc_set_bpid(&rd, bpid);

 return qbman_swp_release(d->swp, &rd, buffers, num_buffers);
}
