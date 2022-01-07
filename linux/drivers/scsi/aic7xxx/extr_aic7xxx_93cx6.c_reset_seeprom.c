
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct seeprom_descriptor {int sd_MS; int sd_CK; int sd_RDY; } ;


 int CLOCK_PULSE (struct seeprom_descriptor*,int ) ;
 int SEEPROM_OUTB (struct seeprom_descriptor*,int) ;

__attribute__((used)) static void
reset_seeprom(struct seeprom_descriptor *sd)
{
 uint8_t temp;

 temp = sd->sd_MS;
 SEEPROM_OUTB(sd, temp);
 CLOCK_PULSE(sd, sd->sd_RDY);
 SEEPROM_OUTB(sd, temp ^ sd->sd_CK);
 CLOCK_PULSE(sd, sd->sd_RDY);
 SEEPROM_OUTB(sd, temp);
 CLOCK_PULSE(sd, sd->sd_RDY);
}
