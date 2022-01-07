
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct goldfish_pipe_dev {int pipes_capacity; struct goldfish_pipe** pipes; } ;
struct goldfish_pipe {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 struct goldfish_pipe** kcalloc (int,int,int ) ;
 int kfree (struct goldfish_pipe**) ;
 int memcpy (struct goldfish_pipe**,struct goldfish_pipe**,int) ;

__attribute__((used)) static int get_free_pipe_id_locked(struct goldfish_pipe_dev *dev)
{
 int id;

 for (id = 0; id < dev->pipes_capacity; ++id)
  if (!dev->pipes[id])
   return id;

 {




  u32 new_capacity = 2 * dev->pipes_capacity;
  struct goldfish_pipe **pipes =
   kcalloc(new_capacity, sizeof(*pipes), GFP_ATOMIC);
  if (!pipes)
   return -ENOMEM;
  memcpy(pipes, dev->pipes, sizeof(*pipes) * dev->pipes_capacity);
  kfree(dev->pipes);
  dev->pipes = pipes;
  id = dev->pipes_capacity;
  dev->pipes_capacity = new_capacity;
 }
 return id;
}
