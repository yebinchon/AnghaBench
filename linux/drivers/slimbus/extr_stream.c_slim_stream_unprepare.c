
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_stream_runtime {int num_ports; int * ports; } ;


 int kfree (int *) ;
 int slim_disconnect_port (struct slim_stream_runtime*,int *) ;

int slim_stream_unprepare(struct slim_stream_runtime *stream)
{
 int i;

 for (i = 0; i < stream->num_ports; i++)
  slim_disconnect_port(stream, &stream->ports[i]);

 kfree(stream->ports);
 stream->ports = ((void*)0);
 stream->num_ports = 0;

 return 0;
}
