
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int dummy; } ;
struct TYPE_2__ {scalar_t__ kbdmode; } ;


 scalar_t__ VC_UNICODE ;
 int conv_uni_to_8bit (unsigned int) ;
 int dead_key_next ;
 int diacr ;
 unsigned int handle_diacr (struct vc_data*,unsigned int) ;
 TYPE_1__* kbd ;
 int put_queue (struct vc_data*,int) ;
 int to_utf8 (struct vc_data*,unsigned int) ;

__attribute__((used)) static void k_unicode(struct vc_data *vc, unsigned int value, char up_flag)
{
 if (up_flag)
  return;

 if (diacr)
  value = handle_diacr(vc, value);

 if (dead_key_next) {
  dead_key_next = 0;
  diacr = value;
  return;
 }
 if (kbd->kbdmode == VC_UNICODE)
  to_utf8(vc, value);
 else {
  int c = conv_uni_to_8bit(value);
  if (c != -1)
   put_queue(vc, c);
 }
}
