; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_bl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_as3711_bl.c_as3711_bl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.as3711_bl_data = type { i64, %struct.backlight_device* }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }

@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@AS3711_BL_SU1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"as3711-su1\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"as3711-su2\00", align 1
@as3711_bl_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32, %struct.as3711_bl_data*)* @as3711_bl_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3711_bl_register(%struct.platform_device* %0, i32 %1, %struct.as3711_bl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.as3711_bl_data*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  %9 = alloca %struct.backlight_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.as3711_bl_data* %2, %struct.as3711_bl_data** %7, align 8
  %10 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  %12 = load i32, i32* @BACKLIGHT_RAW, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %18 = getelementptr inbounds %struct.as3711_bl_data, %struct.as3711_bl_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AS3711_BL_SU1, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %27 = call %struct.backlight_device* @devm_backlight_device_register(i32* %16, i8* %23, i32* %25, %struct.as3711_bl_data* %26, i32* @as3711_bl_ops, %struct.backlight_properties* %8)
  store %struct.backlight_device* %27, %struct.backlight_device** %9, align 8
  %28 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %29 = call i64 @IS_ERR(%struct.backlight_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %36 = call i32 @PTR_ERR(%struct.backlight_device* %35)
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %3
  %38 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %41 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %44 = call i32 @backlight_update_status(%struct.backlight_device* %43)
  %45 = load %struct.backlight_device*, %struct.backlight_device** %9, align 8
  %46 = load %struct.as3711_bl_data*, %struct.as3711_bl_data** %7, align 8
  %47 = getelementptr inbounds %struct.as3711_bl_data, %struct.as3711_bl_data* %46, i32 0, i32 1
  store %struct.backlight_device* %45, %struct.backlight_device** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %31
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i8*, i32*, %struct.as3711_bl_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
