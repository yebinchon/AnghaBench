
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hdmi_ycc_quantization_range { ____Placeholder_hdmi_ycc_quantization_range } hdmi_ycc_quantization_range ;





__attribute__((used)) static const char *
hdmi_ycc_quantization_range_get_name(enum hdmi_ycc_quantization_range qrange)
{
 switch (qrange) {
 case 128:
  return "Limited";
 case 129:
  return "Full";
 }
 return "Invalid";
}
