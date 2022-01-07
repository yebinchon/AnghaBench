; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_aat2870_bl.c_aat2870_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat2870_bl_driver_data = type { i32, %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aat2870_bl_driver_data*, i32)* @aat2870_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aat2870_brightness(%struct.aat2870_bl_driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.aat2870_bl_driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca i32, align 4
  store %struct.aat2870_bl_driver_data* %0, %struct.aat2870_bl_driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %3, align 8
  %8 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %7, i32 0, i32 1
  %9 = load %struct.backlight_device*, %struct.backlight_device** %8, align 8
  store %struct.backlight_device* %9, %struct.backlight_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.aat2870_bl_driver_data*, %struct.aat2870_bl_driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.aat2870_bl_driver_data, %struct.aat2870_bl_driver_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = mul nsw i32 %10, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %17 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
