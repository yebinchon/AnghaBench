
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFGPT_REG_COUNTER ;
 int MFGPT_REG_SETUP ;
 int MFGPT_SETUP_CNTEN ;
 int cs5535_mfgpt_write (int ,int ,int ) ;
 int wdt_timer ;

__attribute__((used)) static void geodewdt_ping(void)
{

 cs5535_mfgpt_write(wdt_timer, MFGPT_REG_SETUP, 0);


 cs5535_mfgpt_write(wdt_timer, MFGPT_REG_COUNTER, 0);


 cs5535_mfgpt_write(wdt_timer, MFGPT_REG_SETUP, MFGPT_SETUP_CNTEN);
}
