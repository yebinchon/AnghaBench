
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rate; scalar_t__ bps; int ch_count; } ;
struct sdw_stream_runtime {TYPE_1__ params; int type; int name; } ;
struct sdw_stream_config {scalar_t__ frame_rate; scalar_t__ bps; scalar_t__ ch_count; int type; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static int sdw_config_stream(struct device *dev,
        struct sdw_stream_runtime *stream,
        struct sdw_stream_config *stream_config,
        bool is_slave)
{
 if (stream->params.rate &&
     stream->params.rate != stream_config->frame_rate) {
  dev_err(dev, "rate not matching, stream:%s\n", stream->name);
  return -EINVAL;
 }

 if (stream->params.bps &&
     stream->params.bps != stream_config->bps) {
  dev_err(dev, "bps not matching, stream:%s\n", stream->name);
  return -EINVAL;
 }

 stream->type = stream_config->type;
 stream->params.rate = stream_config->frame_rate;
 stream->params.bps = stream_config->bps;


 if (is_slave)
  stream->params.ch_count += stream_config->ch_count;

 return 0;
}
