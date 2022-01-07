
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*,char*,char*) ;
 char* prefix ;

void
aic_print_reg_dump_types(FILE *ofile)
{
 if (ofile == ((void*)0))
  return;

 fprintf(ofile,
"typedef int (%sreg_print_t)(u_int, u_int *, u_int);\n"
"typedef struct %sreg_parse_entry {\n"
"	char	*name;\n"
"	uint8_t	 value;\n"
"	uint8_t	 mask;\n"
"} %sreg_parse_entry_t;\n"
"\n",
  prefix, prefix, prefix);
}
