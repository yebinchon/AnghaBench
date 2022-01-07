
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,int) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static inline void myrb_translate_enquiry(void *enq)
{
 memcpy(enq + 132, enq + 36, 64);
 memset(enq + 36, 0, 96);
}
