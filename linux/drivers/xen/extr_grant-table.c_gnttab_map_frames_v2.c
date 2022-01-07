
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xen_pfn_t ;
typedef int uint64_t ;
struct gnttab_get_status_frames {unsigned int nr_frames; scalar_t__ status; int frame_list; int dom; } ;
struct TYPE_2__ {int addr; } ;


 int BUG_ON (int) ;
 int DOMID_SELF ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_ATOMIC ;
 int GNTTABOP_get_status_frames ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_get_status_frames*,int) ;
 int arch_gnttab_map_shared (int *,unsigned int,unsigned int,int *) ;
 int arch_gnttab_map_status (int *,unsigned int,unsigned int,int *) ;
 unsigned int gnttab_max_grant_frames () ;
 TYPE_1__ gnttab_shared ;
 int grstatus ;
 int kfree (int *) ;
 int * kmalloc_array (unsigned int,int,int ) ;
 unsigned int nr_status_frames (unsigned int) ;
 int set_xen_guest_handle (int ,int *) ;

__attribute__((used)) static int gnttab_map_frames_v2(xen_pfn_t *frames, unsigned int nr_gframes)
{
 uint64_t *sframes;
 unsigned int nr_sframes;
 struct gnttab_get_status_frames getframes;
 int rc;

 nr_sframes = nr_status_frames(nr_gframes);




 sframes = kmalloc_array(nr_sframes, sizeof(uint64_t), GFP_ATOMIC);
 if (!sframes)
  return -ENOMEM;

 getframes.dom = DOMID_SELF;
 getframes.nr_frames = nr_sframes;
 set_xen_guest_handle(getframes.frame_list, sframes);

 rc = HYPERVISOR_grant_table_op(GNTTABOP_get_status_frames,
           &getframes, 1);
 if (rc == -ENOSYS) {
  kfree(sframes);
  return -ENOSYS;
 }

 BUG_ON(rc || getframes.status);

 rc = arch_gnttab_map_status(sframes, nr_sframes,
        nr_status_frames(gnttab_max_grant_frames()),
        &grstatus);
 BUG_ON(rc);
 kfree(sframes);

 rc = arch_gnttab_map_shared(frames, nr_gframes,
        gnttab_max_grant_frames(),
        &gnttab_shared.addr);
 BUG_ON(rc);

 return 0;
}
