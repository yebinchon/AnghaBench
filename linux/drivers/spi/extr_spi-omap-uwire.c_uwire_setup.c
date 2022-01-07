
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwire_state {int dummy; } ;
struct spi_device {struct uwire_state* controller_state; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct uwire_state* kzalloc (int,int ) ;
 int uwire_setup_transfer (struct spi_device*,int *) ;

__attribute__((used)) static int uwire_setup(struct spi_device *spi)
{
 struct uwire_state *ust = spi->controller_state;

 if (ust == ((void*)0)) {
  ust = kzalloc(sizeof(*ust), GFP_KERNEL);
  if (ust == ((void*)0))
   return -ENOMEM;
  spi->controller_state = ust;
 }

 return uwire_setup_transfer(spi, ((void*)0));
}
