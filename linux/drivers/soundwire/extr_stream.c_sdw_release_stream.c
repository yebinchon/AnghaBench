
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {int dummy; } ;


 int kfree (struct sdw_stream_runtime*) ;

void sdw_release_stream(struct sdw_stream_runtime *stream)
{
 kfree(stream);
}
