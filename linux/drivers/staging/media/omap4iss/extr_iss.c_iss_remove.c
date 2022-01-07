
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iss_device {int crashed; } ;


 int iss_cleanup_modules (struct iss_device*) ;
 int iss_unregister_entities (struct iss_device*) ;
 int media_entity_enum_cleanup (int *) ;
 struct iss_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int iss_remove(struct platform_device *pdev)
{
 struct iss_device *iss = platform_get_drvdata(pdev);

 iss_unregister_entities(iss);
 media_entity_enum_cleanup(&iss->crashed);
 iss_cleanup_modules(iss);

 return 0;
}
