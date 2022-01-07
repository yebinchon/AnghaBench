
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct armada_thermal_priv {char* zone_name; } ;


 int THERMAL_NAME_LENGTH ;
 char* dev_name (int *) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strpbrk (char*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static void armada_set_sane_name(struct platform_device *pdev,
     struct armada_thermal_priv *priv)
{
 const char *name = dev_name(&pdev->dev);
 char *insane_char;

 if (strlen(name) > THERMAL_NAME_LENGTH) {





  name = strrchr(name, ':');
  if (!name)
   name = "armada_thermal";
  else
   name++;
 }


 strncpy(priv->zone_name, name, THERMAL_NAME_LENGTH - 1);
 priv->zone_name[THERMAL_NAME_LENGTH - 1] = '\0';


 do {
  insane_char = strpbrk(priv->zone_name, "-");
  if (insane_char)
   *insane_char = '_';
 } while (insane_char);
}
