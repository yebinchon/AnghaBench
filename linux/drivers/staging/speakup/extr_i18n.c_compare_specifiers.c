
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_specifier_end (char*) ;
 int memcmp (char*,char*,size_t) ;

__attribute__((used)) static bool compare_specifiers(char **input1, char **input2)
{
 bool same = 0;
 char *end1 = find_specifier_end(*input1);
 char *end2 = find_specifier_end(*input2);
 size_t length1 = end1 - *input1;
 size_t length2 = end2 - *input2;

 if ((length1 == length2) && !memcmp(*input1, *input2, length1))
  same = 1;

 *input1 = end1;
 *input2 = end2;
 return same;
}
