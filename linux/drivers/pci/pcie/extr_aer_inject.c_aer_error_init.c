
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aer_error {unsigned int bus; unsigned int devfn; int pos_cap_err; int domain; int list; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void aer_error_init(struct aer_error *err, u32 domain,
      unsigned int bus, unsigned int devfn,
      int pos_cap_err)
{
 INIT_LIST_HEAD(&err->list);
 err->domain = domain;
 err->bus = bus;
 err->devfn = devfn;
 err->pos_cap_err = pos_cap_err;
}
