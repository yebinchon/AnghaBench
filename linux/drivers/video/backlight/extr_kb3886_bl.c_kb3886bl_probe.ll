; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_kb3886_bl.c_kb3886bl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_kb3886_bl.c_kb3886bl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kb3886bl_machinfo = type { i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@bl_machinfo = common dso_local global %struct.kb3886bl_machinfo* null, align 8
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"kb3886-bl\00", align 1
@kb3886bl_ops = common dso_local global i32 0, align 4
@kb3886_backlight_device = common dso_local global %struct.TYPE_9__* null, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kb3886bl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kb3886bl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_properties, align 4
  %5 = alloca %struct.kb3886bl_machinfo*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.kb3886bl_machinfo* @dev_get_platdata(i32* %7)
  store %struct.kb3886bl_machinfo* %8, %struct.kb3886bl_machinfo** %5, align 8
  %9 = load %struct.kb3886bl_machinfo*, %struct.kb3886bl_machinfo** %5, align 8
  store %struct.kb3886bl_machinfo* %9, %struct.kb3886bl_machinfo** @bl_machinfo, align 8
  %10 = load %struct.kb3886bl_machinfo*, %struct.kb3886bl_machinfo** %5, align 8
  %11 = getelementptr inbounds %struct.kb3886bl_machinfo, %struct.kb3886bl_machinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.kb3886bl_machinfo*, %struct.kb3886bl_machinfo** %5, align 8
  %16 = getelementptr inbounds %struct.kb3886bl_machinfo, %struct.kb3886bl_machinfo* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = call i32 @memset(%struct.backlight_properties* %4, i32 0, i32 8)
  %19 = load i32, i32* @BACKLIGHT_RAW, align 4
  %20 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.kb3886bl_machinfo*, %struct.kb3886bl_machinfo** %5, align 8
  %22 = getelementptr inbounds %struct.kb3886bl_machinfo, %struct.kb3886bl_machinfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %4, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.TYPE_9__* @devm_backlight_device_register(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %28, i32* null, i32* @kb3886bl_ops, %struct.backlight_properties* %4)
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %31 = call i64 @IS_ERR(%struct.TYPE_9__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_9__* %34)
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %17
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.TYPE_9__* %38)
  %40 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.kb3886bl_machinfo*, %struct.kb3886bl_machinfo** %5, align 8
  %45 = getelementptr inbounds %struct.kb3886bl_machinfo, %struct.kb3886bl_machinfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @kb3886_backlight_device, align 8
  %51 = call i32 @backlight_update_status(%struct.TYPE_9__* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %36, %33
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.kb3886bl_machinfo* @dev_get_platdata(i32*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @devm_backlight_device_register(i32*, i8*, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @backlight_update_status(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
