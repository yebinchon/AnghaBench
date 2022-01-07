
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * setup_packet; } ;


 int SETUP_LEN ;
 int memcpy (unsigned char*,int *,int ) ;

__attribute__((used)) static inline char mon_bin_get_setup(unsigned char *setupb,
    const struct urb *urb, char ev_type)
{

 if (urb->setup_packet == ((void*)0))
  return 'Z';
 memcpy(setupb, urb->setup_packet, SETUP_LEN);
 return 0;
}
