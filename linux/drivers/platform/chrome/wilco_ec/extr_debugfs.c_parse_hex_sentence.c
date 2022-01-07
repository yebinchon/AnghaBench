
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int MAX_WORD_SIZE ;
 scalar_t__ isspace (char const) ;
 scalar_t__ kstrtou8 (char*,int,int *) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int parse_hex_sentence(const char *in, int isize, u8 *out, int osize)
{
 int n_parsed = 0;
 int word_start = 0;
 int word_end;
 int word_len;


 char tmp[16 + 1];
 u8 byte;

 while (word_start < isize && n_parsed < osize) {

  while (word_start < isize && isspace(in[word_start]))
   word_start++;

  if (word_start >= isize)
   break;


  word_end = word_start;
  while (word_end < isize && !isspace(in[word_end]))
   word_end++;


  word_len = word_end - word_start;
  if (word_len > 16)
   return -EINVAL;
  memcpy(tmp, in + word_start, word_len);
  tmp[word_len] = '\0';






  if (kstrtou8(tmp, 16, &byte))
   return -EINVAL;
  out[n_parsed++] = byte;

  word_start = word_end;
 }
 return n_parsed;
}
