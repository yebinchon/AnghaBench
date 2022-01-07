
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwahc {int wa; } ;


 int wa_init (int *) ;

__attribute__((used)) static void hwahc_init(struct hwahc *hwahc)
{
 wa_init(&hwahc->wa);
}
