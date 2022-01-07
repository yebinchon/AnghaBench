
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {int dummy; } ;


 int EINVAL ;
 int _sdw_deprepare_stream (struct sdw_stream_runtime*) ;
 int pr_err (char*,...) ;
 int sdw_acquire_bus_lock (struct sdw_stream_runtime*) ;
 int sdw_release_bus_lock (struct sdw_stream_runtime*) ;

int sdw_deprepare_stream(struct sdw_stream_runtime *stream)
{
 int ret;

 if (!stream) {
  pr_err("SoundWire: Handle not found for stream\n");
  return -EINVAL;
 }

 sdw_acquire_bus_lock(stream);
 ret = _sdw_deprepare_stream(stream);
 if (ret < 0)
  pr_err("De-prepare for stream:%d failed: %d\n", ret, ret);

 sdw_release_bus_lock(stream);
 return ret;
}
