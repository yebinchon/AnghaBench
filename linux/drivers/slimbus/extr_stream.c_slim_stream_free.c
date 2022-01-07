
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_stream_runtime {struct slim_stream_runtime* name; int node; struct slim_device* dev; } ;
struct slim_device {int stream_list_lock; } ;


 int kfree (struct slim_stream_runtime*) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int slim_stream_free(struct slim_stream_runtime *stream)
{
 struct slim_device *sdev = stream->dev;

 spin_lock(&sdev->stream_list_lock);
 list_del(&stream->node);
 spin_unlock(&sdev->stream_list_lock);

 kfree(stream->name);
 kfree(stream);

 return 0;
}
