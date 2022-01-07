; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_set_backlight_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_set_backlight_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@OT_EC_BL_BRIGHTNESS_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OT_EC_BL_BRIGHTNESS_ADDRESS = common dso_local global i32 0, align 4
@OT_EC_BL_CONTROL_ADDRESS = common dso_local global i32 0, align 4
@OT_EC_BL_CONTROL_ON_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @set_backlight_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_backlight_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca i64, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %3, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @OT_EC_BL_BRIGHTNESS_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %26

19:                                               ; preds = %12
  %20 = load i32, i32* @OT_EC_BL_BRIGHTNESS_ADDRESS, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @ec_write(i32 %20, i64 %21)
  %23 = load i32, i32* @OT_EC_BL_CONTROL_ADDRESS, align 4
  %24 = load i64, i64* @OT_EC_BL_CONTROL_ON_DATA, align 8
  %25 = call i32 @ec_write(i32 %23, i64 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ec_write(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
