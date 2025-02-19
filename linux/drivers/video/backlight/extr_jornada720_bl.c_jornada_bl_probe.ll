; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_jornada720_bl.c_jornada_bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@BL_MAX_BRIGHT = common dso_local global i32 0, align 4
@S1D_DEVICENAME = common dso_local global i32 0, align 4
@jornada_bl_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to register device, err=%x\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@BL_DEF_BRIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"HP Jornada 700 series backlight driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jornada_bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada_bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %8 = load i32, i32* @BACKLIGHT_RAW, align 4
  %9 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @BL_MAX_BRIGHT, align 4
  %11 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @S1D_DEVICENAME, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.backlight_device* @devm_backlight_device_register(i32* %13, i32 %14, i32* %16, i32* null, i32* @jornada_bl_ops, %struct.backlight_properties* %4)
  store %struct.backlight_device* %17, %struct.backlight_device** %6, align 8
  %18 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %19 = call i64 @IS_ERR(%struct.backlight_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.backlight_device* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %1
  %30 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %31 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %32 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @BL_DEF_BRIGHT, align 4
  %35 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %36 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %39 = call i32 @jornada_bl_update_status(%struct.backlight_device* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.backlight_device*, %struct.backlight_device** %6, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.backlight_device* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %29, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @jornada_bl_update_status(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
