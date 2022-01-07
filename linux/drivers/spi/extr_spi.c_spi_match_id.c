
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device_id {scalar_t__* name; } ;
struct spi_device {int modalias; } ;


 int strcmp (int ,scalar_t__*) ;

__attribute__((used)) static const struct spi_device_id *spi_match_id(const struct spi_device_id *id,
      const struct spi_device *sdev)
{
 while (id->name[0]) {
  if (!strcmp(sdev->modalias, id->name))
   return id;
  id++;
 }
 return ((void*)0);
}
