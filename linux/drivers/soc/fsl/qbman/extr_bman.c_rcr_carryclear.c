
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bm_rcr_entry {int dummy; } ;


 uintptr_t RCR_CARRY ;

__attribute__((used)) static struct bm_rcr_entry *rcr_carryclear(struct bm_rcr_entry *p)
{
 uintptr_t addr = (uintptr_t)p;

 addr &= ~RCR_CARRY;

 return (struct bm_rcr_entry *)addr;
}
