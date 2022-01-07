
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MDA_MODE_BLINK_EN ;
 int MDA_MODE_VIDEO_EN ;
 int mda_gfx_port ;
 int mda_mode_port ;
 int mda_status_port ;
 int outb_p (int,int ) ;
 int write_mda_b (int,int) ;
 int write_mda_w (int,int) ;

__attribute__((used)) static void mda_initialize(void)
{
 write_mda_b(97, 0x00);
 write_mda_b(80, 0x01);
 write_mda_b(82, 0x02);
 write_mda_b(15, 0x03);

 write_mda_b(25, 0x04);
 write_mda_b(6, 0x05);
 write_mda_b(25, 0x06);
 write_mda_b(25, 0x07);

 write_mda_b(2, 0x08);
 write_mda_b(13, 0x09);
 write_mda_b(12, 0x0a);
 write_mda_b(13, 0x0b);

 write_mda_w(0x0000, 0x0c);
 write_mda_w(0x0000, 0x0e);

 outb_p(MDA_MODE_VIDEO_EN | MDA_MODE_BLINK_EN, mda_mode_port);
 outb_p(0x00, mda_status_port);
 outb_p(0x00, mda_gfx_port);
}
