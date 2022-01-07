
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ceph_mds_client {int cap_flushing_wq; } ;


 int check_caps_flush (struct ceph_mds_client*,int ) ;
 int dout (char*,int ) ;
 int wait_event (int ,int ) ;

__attribute__((used)) static void wait_caps_flush(struct ceph_mds_client *mdsc,
       u64 want_flush_tid)
{
 dout("check_caps_flush want %llu\n", want_flush_tid);

 wait_event(mdsc->cap_flushing_wq,
     check_caps_flush(mdsc, want_flush_tid));

 dout("check_caps_flush ok, flushed thru %llu\n", want_flush_tid);
}
