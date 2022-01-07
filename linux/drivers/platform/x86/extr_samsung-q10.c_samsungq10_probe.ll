; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-q10.c_samsungq10_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-q10.c_samsungq10_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.backlight_device = type { i32 }

@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@SAMSUNGQ10_BL_MAX_INTENSITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"samsung\00", align 1
@samsungq10_bl_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @samsungq10_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsungq10_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %7 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @SAMSUNGQ10_BL_MAX_INTENSITY, align 4
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.backlight_device* @backlight_device_register(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %12, i32* null, i32* @samsungq10_bl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %13, %struct.backlight_device** %5, align 8
  %14 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %15 = call i64 @IS_ERR(%struct.backlight_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %19 = call i32 @PTR_ERR(%struct.backlight_device* %18)
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %23 = call i32 @platform_set_drvdata(%struct.platform_device* %21, %struct.backlight_device* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i8*, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
