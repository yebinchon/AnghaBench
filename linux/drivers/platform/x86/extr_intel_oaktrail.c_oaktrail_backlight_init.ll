; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_oaktrail_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_oaktrail.c_oaktrail_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.backlight_properties = type { i32, i32 }

@BACKLIGHT_PLATFORM = common dso_local global i32 0, align 4
@OT_EC_BL_BRIGHTNESS_MAX = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@oaktrail_device = common dso_local global %struct.TYPE_4__* null, align 8
@oaktrail_bl_ops = common dso_local global i32 0, align 4
@oaktrail_bl_device = common dso_local global %struct.backlight_device* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Unable to register backlight device\0A\00", align 1
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @oaktrail_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oaktrail_backlight_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.backlight_properties, align 4
  %4 = call i32 @memset(%struct.backlight_properties* %3, i32 0, i32 8)
  %5 = load i32, i32* @BACKLIGHT_PLATFORM, align 4
  %6 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @OT_EC_BL_BRIGHTNESS_MAX, align 4
  %8 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %3, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @DRIVER_NAME, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @oaktrail_device, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call %struct.backlight_device* @backlight_device_register(i32 %9, i32* %11, i32* null, i32* @oaktrail_bl_ops, %struct.backlight_properties* %3)
  store %struct.backlight_device* %12, %struct.backlight_device** %2, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %14 = call i64 @IS_ERR(%struct.backlight_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  store %struct.backlight_device* null, %struct.backlight_device** @oaktrail_bl_device, align 8
  %17 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %19 = call i32 @PTR_ERR(%struct.backlight_device* %18)
  store i32 %19, i32* %1, align 4
  br label %33

20:                                               ; preds = %0
  %21 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  store %struct.backlight_device* %21, %struct.backlight_device** @oaktrail_bl_device, align 8
  %22 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %23 = call i32 @get_backlight_brightness(%struct.backlight_device* %22)
  %24 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %25 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %28 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %29 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %32 = call i32 @backlight_update_status(%struct.backlight_device* %31)
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %20, %16
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, i32*, i32*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @pr_warning(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @get_backlight_brightness(%struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
