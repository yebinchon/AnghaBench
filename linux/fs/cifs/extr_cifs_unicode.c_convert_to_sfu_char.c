
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 int UNI_ASTERISK ;
 int UNI_COLON ;
 int UNI_GRTRTHAN ;
 int UNI_LESSTHAN ;
 int UNI_PIPE ;
 int UNI_QUESTION ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static __le16 convert_to_sfu_char(char src_char)
{
 __le16 dest_char;

 switch (src_char) {
 case ':':
  dest_char = cpu_to_le16(UNI_COLON);
  break;
 case '*':
  dest_char = cpu_to_le16(UNI_ASTERISK);
  break;
 case '?':
  dest_char = cpu_to_le16(UNI_QUESTION);
  break;
 case '<':
  dest_char = cpu_to_le16(UNI_LESSTHAN);
  break;
 case '>':
  dest_char = cpu_to_le16(UNI_GRTRTHAN);
  break;
 case '|':
  dest_char = cpu_to_le16(UNI_PIPE);
  break;
 default:
  dest_char = 0;
 }

 return dest_char;
}
