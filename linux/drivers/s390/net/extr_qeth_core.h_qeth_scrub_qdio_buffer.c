
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qdio_buffer_element {int dummy; } ;
struct qdio_buffer {TYPE_1__* element; } ;
struct TYPE_2__ {scalar_t__ sflags; } ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void qeth_scrub_qdio_buffer(struct qdio_buffer *buf,
       unsigned int elements)
{
 unsigned int i;

 for (i = 0; i < elements; i++)
  memset(&buf->element[i], 0, sizeof(struct qdio_buffer_element));
 buf->element[14].sflags = 0;
 buf->element[15].sflags = 0;
}
