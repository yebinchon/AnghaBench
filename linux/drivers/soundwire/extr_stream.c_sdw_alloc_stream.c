
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdw_stream_runtime {char const* name; scalar_t__ m_rt_count; int state; int master_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SDW_STREAM_ALLOCATED ;
 struct sdw_stream_runtime* kzalloc (int,int ) ;

struct sdw_stream_runtime *sdw_alloc_stream(const char *stream_name)
{
 struct sdw_stream_runtime *stream;

 stream = kzalloc(sizeof(*stream), GFP_KERNEL);
 if (!stream)
  return ((void*)0);

 stream->name = stream_name;
 INIT_LIST_HEAD(&stream->master_list);
 stream->state = SDW_STREAM_ALLOCATED;
 stream->m_rt_count = 0;

 return stream;
}
