
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int dummy; } ;


 int cifs_mid_q_entry_release (struct mid_q_entry*) ;

void DeleteMidQEntry(struct mid_q_entry *midEntry)
{
 cifs_mid_q_entry_release(midEntry);
}
