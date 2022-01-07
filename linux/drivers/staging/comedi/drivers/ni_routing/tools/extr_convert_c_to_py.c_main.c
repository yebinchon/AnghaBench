
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int device_write (scalar_t__,int *) ;
 int family_write (scalar_t__,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*) ;
 scalar_t__* ni_all_route_values ;
 scalar_t__* ni_device_routes_list ;

int main(void)
{
 FILE *fp = fopen("ni_values.py", "w");


 fprintf(fp, "ni_route_values = {\n");
 for (int i = 0; ni_all_route_values[i]; ++i)
  family_write(ni_all_route_values[i], fp);
 fprintf(fp, "}\n\n");


 fprintf(fp, "ni_device_routes = {\n");
 for (int i = 0; ni_device_routes_list[i]; ++i)
  device_write(ni_device_routes_list[i], fp);
 fprintf(fp, "}\n");


 fclose(fp);
 return 0;
}
