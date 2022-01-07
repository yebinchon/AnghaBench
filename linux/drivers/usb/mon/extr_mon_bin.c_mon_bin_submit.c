
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct mon_reader_bin {int dummy; } ;


 int EINPROGRESS ;
 int mon_bin_event (struct mon_reader_bin*,struct urb*,char,int ) ;

__attribute__((used)) static void mon_bin_submit(void *data, struct urb *urb)
{
 struct mon_reader_bin *rp = data;
 mon_bin_event(rp, urb, 'S', -EINPROGRESS);
}
