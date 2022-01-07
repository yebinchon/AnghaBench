
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_video_timings {int dummy; } ;
struct omap_dss_device {int dummy; } ;
struct dpi_data {int lock; struct omap_video_timings timings; } ;


 int DSSDBG (char*) ;
 struct dpi_data* dpi_get_data_from_dssdev (struct omap_dss_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void dpi_set_timings(struct omap_dss_device *dssdev,
  struct omap_video_timings *timings)
{
 struct dpi_data *dpi = dpi_get_data_from_dssdev(dssdev);

 DSSDBG("dpi_set_timings\n");

 mutex_lock(&dpi->lock);

 dpi->timings = *timings;

 mutex_unlock(&dpi->lock);
}
