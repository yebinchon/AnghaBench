
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct list_head {int dummy; } ;



__attribute__((used)) static inline u32 end_of_queue_search(struct list_head *head,
  struct list_head *plist)
{
 return (head == plist);
}
