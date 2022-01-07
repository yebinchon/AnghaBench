
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
 int get_sentence_buf (struct vc_data*,int ) ;
 int kbd_fakekey2 (struct vc_data*,int const) ;
 int read_all_doc (struct vc_data*) ;
 int say_sentence_num (int,int) ;
 int spk_get_index_count (int*,int*) ;
 int spk_reset_index_count (int) ;
 int start_read_all_timer (struct vc_data*,int const) ;
 int synth_insert_next_index (int ) ;

__attribute__((used)) static void handle_cursor_read_all(struct vc_data *vc, int command)
{
 int indcount, sentcount, rv, sn;

 switch (command) {
 case 131:

  spk_get_index_count(&indcount, &sentcount);

  spk_reset_index_count(sentcount + 1);
  if (indcount == 1) {
   if (!say_sentence_num(sentcount + 1, 0)) {
    kbd_fakekey2(vc, 134);
    return;
   }
   synth_insert_next_index(0);
  } else {
   sn = 0;
   if (!say_sentence_num(sentcount + 1, 1)) {
    sn = 1;
    spk_reset_index_count(sn);
   } else {
    synth_insert_next_index(0);
   }
   if (!say_sentence_num(sn, 0)) {
    kbd_fakekey2(vc, 134);
    return;
   }
   synth_insert_next_index(0);
  }
  start_read_all_timer(vc, 128);
  break;
 case 129:
  break;
 case 132:
  read_all_doc(vc);
  break;
 case 130:
  break;
 case 135:
  if (get_sentence_buf(vc, 0) == -1) {
   kbd_fakekey2(vc, 135);
  } else {
   say_sentence_num(0, 0);
   synth_insert_next_index(0);
   start_read_all_timer(vc, 128);
  }
  break;
 case 134:
  rv = get_sentence_buf(vc, 0);
  if (rv == -1)
   read_all_doc(vc);
  if (rv == 0) {
   kbd_fakekey2(vc, 134);
  } else {
   say_sentence_num(1, 0);
   synth_insert_next_index(0);
   start_read_all_timer(vc, 128);
  }
  break;
 case 133:
  break;
 case 128:
  spk_get_index_count(&indcount, &sentcount);
  if (indcount < 2)
   kbd_fakekey2(vc, 135);
  else
   start_read_all_timer(vc, 128);
  break;
 }
}
