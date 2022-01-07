
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aidaw {int dummy; } ;


 unsigned long ALIGN (unsigned long,unsigned long) ;
 unsigned long PAGE_SIZE ;

__attribute__((used)) static inline unsigned long scm_aidaw_bytes(struct aidaw *aidaw)
{
 unsigned long _aidaw = (unsigned long) aidaw;
 unsigned long bytes = ALIGN(_aidaw, PAGE_SIZE) - _aidaw;

 return (bytes / sizeof(*aidaw)) * PAGE_SIZE;
}
