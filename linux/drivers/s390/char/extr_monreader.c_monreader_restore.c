
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SEGMENT_SHARED ;
 int mon_dcss_end ;
 int mon_dcss_name ;
 int mon_dcss_start ;
 int monreader_thaw (struct device*) ;
 int panic (char*) ;
 int segment_load (int ,int ,int *,int *) ;
 int segment_unload (int ) ;
 int segment_warning (int,int ) ;

__attribute__((used)) static int monreader_restore(struct device *dev)
{
 int rc;

 segment_unload(mon_dcss_name);
 rc = segment_load(mon_dcss_name, SEGMENT_SHARED,
     &mon_dcss_start, &mon_dcss_end);
 if (rc < 0) {
  segment_warning(rc, mon_dcss_name);
  panic("fatal monreader resume error: no monitor dcss\n");
 }
 return monreader_thaw(dev);
}
