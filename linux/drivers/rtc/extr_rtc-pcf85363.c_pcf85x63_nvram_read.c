
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf85363 {int regmap; } ;


 int CTRL_RAMBYTE ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pcf85x63_nvram_read(void *priv, unsigned int offset, void *val,
          size_t bytes)
{
 struct pcf85363 *pcf85363 = priv;
 unsigned int tmp_val;
 int ret;

 ret = regmap_read(pcf85363->regmap, CTRL_RAMBYTE, &tmp_val);
 (*(unsigned char *) val) = (unsigned char) tmp_val;

 return ret;
}
