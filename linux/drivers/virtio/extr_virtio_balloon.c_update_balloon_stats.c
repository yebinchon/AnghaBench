
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_balloon {int dummy; } ;
struct sysinfo {unsigned long freeram; unsigned long totalram; } ;


 size_t HTLB_BUDDY_PGALLOC ;
 size_t HTLB_BUDDY_PGALLOC_FAIL ;
 int NR_FILE_PAGES ;
 int NR_VM_EVENT_ITEMS ;
 size_t PGFAULT ;
 size_t PGMAJFAULT ;
 size_t PSWPIN ;
 size_t PSWPOUT ;
 int VIRTIO_BALLOON_S_AVAIL ;
 int VIRTIO_BALLOON_S_CACHES ;
 int VIRTIO_BALLOON_S_HTLB_PGALLOC ;
 int VIRTIO_BALLOON_S_HTLB_PGFAIL ;
 int VIRTIO_BALLOON_S_MAJFLT ;
 int VIRTIO_BALLOON_S_MEMFREE ;
 int VIRTIO_BALLOON_S_MEMTOT ;
 int VIRTIO_BALLOON_S_MINFLT ;
 int VIRTIO_BALLOON_S_SWAP_IN ;
 int VIRTIO_BALLOON_S_SWAP_OUT ;
 int all_vm_events (unsigned long*) ;
 unsigned long global_node_page_state (int ) ;
 unsigned long pages_to_bytes (unsigned long) ;
 long si_mem_available () ;
 int si_meminfo (struct sysinfo*) ;
 int update_stat (struct virtio_balloon*,int ,int ,unsigned long) ;

__attribute__((used)) static unsigned int update_balloon_stats(struct virtio_balloon *vb)
{
 unsigned long events[NR_VM_EVENT_ITEMS];
 struct sysinfo i;
 unsigned int idx = 0;
 long available;
 unsigned long caches;

 all_vm_events(events);
 si_meminfo(&i);

 available = si_mem_available();
 caches = global_node_page_state(NR_FILE_PAGES);
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MEMFREE,
    pages_to_bytes(i.freeram));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_MEMTOT,
    pages_to_bytes(i.totalram));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_AVAIL,
    pages_to_bytes(available));
 update_stat(vb, idx++, VIRTIO_BALLOON_S_CACHES,
    pages_to_bytes(caches));

 return idx;
}
