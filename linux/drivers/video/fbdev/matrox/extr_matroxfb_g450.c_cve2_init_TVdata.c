
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output_desc {int h_vis; int h_f_porch; int h_sync; int h_b_porch; unsigned long long chromasc; int burst; int v_total; } ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; int member_9; int member_10; int member_11; int member_12; int member_13; int member_14; int member_15; int member_16; int member_17; int member_18; int member_19; int member_20; int member_21; int member_22; int member_23; int member_24; int member_25; int member_26; int member_27; int member_28; int member_29; int member_30; int member_31; int member_32; int member_33; int member_34; int member_35; int member_36; int member_37; int member_38; int member_39; int member_40; int member_41; int member_42; int member_43; int member_44; int member_45; int member_46; int member_47; int member_48; int member_49; int member_50; int member_51; int member_52; int member_53; int member_54; int member_55; int member_56; int member_57; int member_58; int member_59; int member_60; int member_61; int member_62; int member_63; } ;
struct mavenregs {TYPE_1__ member_0; } ;


 int MATROXFB_OUTPUT_MODE_PAL ;

__attribute__((used)) static void cve2_init_TVdata(int norm, struct mavenregs* data, const struct output_desc** outd) {
 static const struct output_desc paloutd = {
  .h_vis = 52148148,
  .h_f_porch = 1407407,
  .h_sync = 4666667,
  .h_b_porch = 5777778,
  .chromasc = 19042247534182ULL,
  .burst = 2518518,
  .v_total = 625,
 };
 static const struct output_desc ntscoutd = {
  .h_vis = 52888889,
  .h_f_porch = 1333333,
  .h_sync = 4666667,
  .h_b_porch = 4666667,
  .chromasc = 15374030659475ULL,
  .burst = 2418418,
  .v_total = 525,
 };

 static const struct mavenregs palregs = { {
  0x2A, 0x09, 0x8A, 0xCB,
  0x00,
  0x00,
  0xF9,
  0x00,
  0x7E,
  0x44,
  0x9C,
  0x2E,
  0x21,
  0x00,

  0x3C, 0x03,
  0x3C, 0x03,
  0x1A,
  0x2A,
  0x1C, 0x3D, 0x14,
  0x9C, 0x01,
  0x00,
  0xFE,
  0x7E,
  0x60,
  0x05,

  0xAD, 0x03,

  0xA5,
  0x07,

  0xA5,
  0x00,
  0x00,
  0x00,
  0x08,
  0x04,
  0x00,
  0x1A,
  0x55, 0x01,
  0x26,
  0x07, 0x7E,
  0x02, 0x54,
  0xB0, 0x00,
  0x14,
  0x49,
  0x00,
  0x00,
  0xA3,
  0xC8,
  0x22,
  0x02,
  0x22,
  0x3F, 0x03,
  0x00,
  0x00,
 } };
 static const struct mavenregs ntscregs = { {
  0x21, 0xF0, 0x7C, 0x1F,
  0x00,
  0x00,
  0xF9,
  0x00,
  0x7E,
  0x43,
  0x7E,
  0x3D,
  0x00,
  0x00,
  0x41, 0x00,
  0x3C, 0x00,
  0x17,
  0x21,
  0x1B, 0x1B, 0x24,
  0x83, 0x01,
  0x00,
  0x0F,
  0x0F,
  0x60,
  0x05,

  0xC0, 0x02,

  0x9C,
  0x04,

  0x9C,
  0x01,
  0x02,
  0x00,
  0x0A,
  0x05,
  0x00,
  0x10,
  0xFF, 0x03,
  0x24,
  0x0F, 0x78,
  0x00, 0x00,
  0xB2, 0x04,
  0x14,
  0x02,
  0x00,
  0x00,
  0xA3,
  0xC8,
  0x15,
  0x05,
  0x3B,
  0x3C, 0x00,
  0x00,
  0x00,
 } };

 if (norm == MATROXFB_OUTPUT_MODE_PAL) {
  *data = palregs;
  *outd = &paloutd;
 } else {
    *data = ntscregs;
  *outd = &ntscoutd;
 }
  return;
}
