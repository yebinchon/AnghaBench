
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int release_firmware (int ) ;
 int sequencer_fw ;

int asd_release_firmware(void)
{
 release_firmware(sequencer_fw);
 return 0;
}
