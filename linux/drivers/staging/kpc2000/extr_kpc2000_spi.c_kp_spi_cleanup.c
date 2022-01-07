
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {struct kp_spi_controller_state* controller_state; } ;
struct kp_spi_controller_state {int dummy; } ;


 int kfree (struct kp_spi_controller_state*) ;

__attribute__((used)) static void
kp_spi_cleanup(struct spi_device *spidev)
{
 struct kp_spi_controller_state *cs = spidev->controller_state;

 kfree(cs);
}
