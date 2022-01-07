
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 char SFM_ASTERISK ;
 char SFM_COLON ;
 char SFM_DOUBLEQUOTE ;
 char SFM_GRTRTHAN ;
 char SFM_LESSTHAN ;
 char SFM_PERIOD ;
 char SFM_PIPE ;
 char SFM_QUESTION ;
 char SFM_SPACE ;
 int cpu_to_le16 (char) ;

__attribute__((used)) static __le16 convert_to_sfm_char(char src_char, bool end_of_string)
{
 __le16 dest_char;

 if (src_char >= 0x01 && src_char <= 0x1F) {
  dest_char = cpu_to_le16(src_char + 0xF000);
  return dest_char;
 }
 switch (src_char) {
 case ':':
  dest_char = cpu_to_le16(SFM_COLON);
  break;
 case '"':
  dest_char = cpu_to_le16(SFM_DOUBLEQUOTE);
  break;
 case '*':
  dest_char = cpu_to_le16(SFM_ASTERISK);
  break;
 case '?':
  dest_char = cpu_to_le16(SFM_QUESTION);
  break;
 case '<':
  dest_char = cpu_to_le16(SFM_LESSTHAN);
  break;
 case '>':
  dest_char = cpu_to_le16(SFM_GRTRTHAN);
  break;
 case '|':
  dest_char = cpu_to_le16(SFM_PIPE);
  break;
 case '.':
  if (end_of_string)
   dest_char = cpu_to_le16(SFM_PERIOD);
  else
   dest_char = 0;
  break;
 case ' ':
  if (end_of_string)
   dest_char = cpu_to_le16(SFM_SPACE);
  else
   dest_char = 0;
  break;
 default:
  dest_char = 0;
 }

 return dest_char;
}
