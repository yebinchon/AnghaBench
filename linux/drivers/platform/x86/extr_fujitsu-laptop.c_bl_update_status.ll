; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_fujitsu-laptop.c_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.acpi_device = type { i32 }

@fext = common dso_local global i64 0, align 8
@FB_BLANK_POWERDOWN = common dso_local global i64 0, align 8
@FUNC_BACKLIGHT = common dso_local global i32 0, align 4
@BACKLIGHT_PARAM_POWER = common dso_local global i32 0, align 4
@BACKLIGHT_OFF = common dso_local global i32 0, align 4
@BACKLIGHT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %4 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %5 = call %struct.acpi_device* @bl_get_data(%struct.backlight_device* %4)
  store %struct.acpi_device* %5, %struct.acpi_device** %3, align 8
  %6 = load i64, i64* @fext, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %10 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @FB_BLANK_POWERDOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load i64, i64* @fext, align 8
  %17 = load i32, i32* @FUNC_BACKLIGHT, align 4
  %18 = load i32, i32* @BACKLIGHT_PARAM_POWER, align 4
  %19 = load i32, i32* @BACKLIGHT_OFF, align 4
  %20 = call i32 @call_fext_func(i64 %16, i32 %17, i32 1, i32 %18, i32 %19)
  br label %27

21:                                               ; preds = %8
  %22 = load i64, i64* @fext, align 8
  %23 = load i32, i32* @FUNC_BACKLIGHT, align 4
  %24 = load i32, i32* @BACKLIGHT_PARAM_POWER, align 4
  %25 = load i32, i32* @BACKLIGHT_ON, align 4
  %26 = call i32 @call_fext_func(i64 %22, i32 %23, i32 1, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %30 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %31 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @set_lcd_level(%struct.acpi_device* %29, i32 %33)
  ret i32 %34
}

declare dso_local %struct.acpi_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @call_fext_func(i64, i32, i32, i32, i32) #1

declare dso_local i32 @set_lcd_level(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
