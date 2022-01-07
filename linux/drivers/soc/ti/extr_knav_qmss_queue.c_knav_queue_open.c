
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void knav_queue ;


 int EINVAL ;
 void* ERR_PTR (int ) ;



 void* knav_queue_open_by_id (char const*,unsigned int,unsigned int) ;
 void* knav_queue_open_by_type (char const*,unsigned int,unsigned int) ;

void *knav_queue_open(const char *name, unsigned id,
     unsigned flags)
{
 struct knav_queue *qh = ERR_PTR(-EINVAL);

 switch (id) {
 case 128:
 case 130:
 case 129:
  qh = knav_queue_open_by_type(name, id, flags);
  break;

 default:
  qh = knav_queue_open_by_id(name, id, flags);
  break;
 }
 return qh;
}
