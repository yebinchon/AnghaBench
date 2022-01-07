; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ipaq_micro_bl.c_micro_backlight_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ipaq_micro_bl.c_micro_backlight_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.backlight_device = type { i32 }
%struct.ipaq_micro = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ipaq-micro-backlight\00", align 1
@micro_bl_ops = common dso_local global i32 0, align 4
@micro_bl_props = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @micro_backlight_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @micro_backlight_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.backlight_device*, align 8
  %5 = alloca %struct.ipaq_micro*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ipaq_micro* @dev_get_drvdata(i32 %9)
  store %struct.ipaq_micro* %10, %struct.ipaq_micro** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %16 = call %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_3__* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.TYPE_3__* %14, %struct.ipaq_micro* %15, i32* @micro_bl_ops, i32* @micro_bl_props)
  store %struct.backlight_device* %16, %struct.backlight_device** %4, align 8
  %17 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %18 = call i64 @IS_ERR(%struct.backlight_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %22 = call i32 @PTR_ERR(%struct.backlight_device* %21)
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.backlight_device* %25)
  %27 = load %struct.backlight_device*, %struct.backlight_device** %4, align 8
  %28 = call i32 @backlight_update_status(%struct.backlight_device* %27)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.ipaq_micro* @dev_get_drvdata(i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(%struct.TYPE_3__*, i8*, %struct.TYPE_3__*, %struct.ipaq_micro*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @backlight_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
