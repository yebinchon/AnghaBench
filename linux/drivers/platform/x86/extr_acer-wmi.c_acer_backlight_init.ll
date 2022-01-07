; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@max_brightness = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"acer-wmi\00", align 1
@acer_bl_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Could not register Acer backlight device\0A\00", align 1
@acer_backlight_device = common dso_local global %struct.backlight_device* null, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acer_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_backlight_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %7 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @max_brightness, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.device* %11, i32* null, i32* @acer_bl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %12, %struct.backlight_device** %5, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %14 = call i64 @IS_ERR(%struct.backlight_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store %struct.backlight_device* null, %struct.backlight_device** @acer_backlight_device, align 8
  %18 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.backlight_device* %18)
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  store %struct.backlight_device* %21, %struct.backlight_device** @acer_backlight_device, align 8
  %22 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %23 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %24 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %27 = call i32 @read_brightness(%struct.backlight_device* %26)
  %28 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %29 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %32 = call i32 @backlight_update_status(%struct.backlight_device* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, %struct.device*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @read_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
