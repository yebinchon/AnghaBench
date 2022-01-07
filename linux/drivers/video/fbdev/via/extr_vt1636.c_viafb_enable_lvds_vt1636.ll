; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_enable_lvds_vt1636.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_enable_lvds_vt1636.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32 }

@vdd_on_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_enable_lvds_vt1636(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1) #0 {
  %3 = alloca %struct.lvds_setting_information*, align 8
  %4 = alloca %struct.lvds_chip_information*, align 8
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %3, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %4, align 8
  %5 = load %struct.lvds_setting_information*, %struct.lvds_setting_information** %3, align 8
  %6 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %4, align 8
  %7 = load i32, i32* @vdd_on_data, align 4
  %8 = call i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information* %5, %struct.lvds_chip_information* %6, i32 %7)
  ret void
}

declare dso_local i32 @viafb_gpio_i2c_write_mask_lvds(%struct.lvds_setting_information*, %struct.lvds_chip_information*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
