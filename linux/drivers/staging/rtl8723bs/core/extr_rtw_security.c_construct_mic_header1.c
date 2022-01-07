
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
typedef int sint ;


 scalar_t__ WIFI_MGT_TYPE ;

__attribute__((used)) static void construct_mic_header1(
 u8 *mic_header1,
 sint header_length,
 u8 *mpdu,
 uint frtype
)
{
  mic_header1[0] = (u8)((header_length - 2) / 256);
  mic_header1[1] = (u8)((header_length - 2) % 256);


  if (frtype == WIFI_MGT_TYPE)
   mic_header1[2] = mpdu[0];
  else
   mic_header1[2] = mpdu[0] & 0xcf;

  mic_header1[3] = mpdu[1] & 0xc7;
  mic_header1[4] = mpdu[4];
  mic_header1[5] = mpdu[5];
  mic_header1[6] = mpdu[6];
  mic_header1[7] = mpdu[7];
  mic_header1[8] = mpdu[8];
  mic_header1[9] = mpdu[9];
  mic_header1[10] = mpdu[10];
  mic_header1[11] = mpdu[11];
  mic_header1[12] = mpdu[12];
  mic_header1[13] = mpdu[13];
  mic_header1[14] = mpdu[14];
  mic_header1[15] = mpdu[15];
}
