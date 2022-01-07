
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int dummy; } ;



__attribute__((used)) static unsigned int
cifs_get_credits(struct mid_q_entry *mid)
{
 return 1;
}
