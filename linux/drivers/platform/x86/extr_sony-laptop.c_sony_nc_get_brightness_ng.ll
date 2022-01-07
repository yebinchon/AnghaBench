; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_get_brightness_ng.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_nc_get_brightness_ng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { i32 }
%struct.sony_backlight_props = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @sony_nc_get_brightness_ng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sony_nc_get_brightness_ng(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sony_backlight_props*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = call i64 @bl_get_data(%struct.backlight_device* %5)
  %7 = inttoptr i64 %6 to %struct.sony_backlight_props*
  store %struct.sony_backlight_props* %7, %struct.sony_backlight_props** %4, align 8
  %8 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %9 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %12 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 256
  %15 = call i32 @sony_call_snc_handle(i32 %10, i64 %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 255
  %18 = load %struct.sony_backlight_props*, %struct.sony_backlight_props** %4, align 8
  %19 = getelementptr inbounds %struct.sony_backlight_props, %struct.sony_backlight_props* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  ret i32 %21
}

declare dso_local i64 @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @sony_call_snc_handle(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
