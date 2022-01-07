
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trf7970a {int lock; int regulator; int ddev; } ;
struct spi_device {int dummy; } ;


 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfc_digital_free_device (int ) ;
 int nfc_digital_unregister_device (int ) ;
 int regulator_disable (int ) ;
 struct trf7970a* spi_get_drvdata (struct spi_device*) ;
 int trf7970a_shutdown (struct trf7970a*) ;

__attribute__((used)) static int trf7970a_remove(struct spi_device *spi)
{
 struct trf7970a *trf = spi_get_drvdata(spi);

 mutex_lock(&trf->lock);

 trf7970a_shutdown(trf);

 mutex_unlock(&trf->lock);

 nfc_digital_unregister_device(trf->ddev);
 nfc_digital_free_device(trf->ddev);

 regulator_disable(trf->regulator);

 mutex_destroy(&trf->lock);

 return 0;
}
