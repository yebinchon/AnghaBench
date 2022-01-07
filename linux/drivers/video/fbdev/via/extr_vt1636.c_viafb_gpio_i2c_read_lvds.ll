; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_gpio_i2c_read_lvds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_vt1636.c_viafb_gpio_i2c_read_lvds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lvds_setting_information = type { i32 }
%struct.lvds_chip_information = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @viafb_gpio_i2c_read_lvds(%struct.lvds_setting_information* %0, %struct.lvds_chip_information* %1, i32 %2) #0 {
  %4 = alloca %struct.lvds_setting_information*, align 8
  %5 = alloca %struct.lvds_chip_information*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lvds_setting_information* %0, %struct.lvds_setting_information** %4, align 8
  store %struct.lvds_chip_information* %1, %struct.lvds_chip_information** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %5, align 8
  %9 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.lvds_chip_information*, %struct.lvds_chip_information** %5, align 8
  %12 = getelementptr inbounds %struct.lvds_chip_information, %struct.lvds_chip_information* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @viafb_i2c_readbyte(i32 %10, i32 %13, i32 %14, i32* %7)
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @viafb_i2c_readbyte(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
