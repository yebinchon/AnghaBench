
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct segment_info {int segment_type; int lh; int segment_name; int end; int start; } ;


 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SEGMENT_SHARED ;
 int dcssblk_devices_sem ;
 struct segment_info* dcssblk_get_segment_by_name (char*) ;
 int down_read (int *) ;
 int kfree (struct segment_info*) ;
 struct segment_info* kzalloc (int,int ) ;
 int segment_load (char*,int ,int *,int *) ;
 int segment_warning (int,int ) ;
 int strcpy (int ,char*) ;
 int up_read (int *) ;

__attribute__((used)) static int
dcssblk_load_segment(char *name, struct segment_info **seg_info)
{
 int rc;


 down_read(&dcssblk_devices_sem);
 *seg_info = dcssblk_get_segment_by_name(name);
 up_read(&dcssblk_devices_sem);
 if (*seg_info != ((void*)0))
  return -EEXIST;


 *seg_info = kzalloc(sizeof(struct segment_info), GFP_KERNEL);
 if (*seg_info == ((void*)0))
  return -ENOMEM;

 strcpy((*seg_info)->segment_name, name);


 rc = segment_load(name, SEGMENT_SHARED,
   &(*seg_info)->start, &(*seg_info)->end);
 if (rc < 0) {
  segment_warning(rc, (*seg_info)->segment_name);
  kfree(*seg_info);
 } else {
  INIT_LIST_HEAD(&(*seg_info)->lh);
  (*seg_info)->segment_type = rc;
 }
 return rc;
}
