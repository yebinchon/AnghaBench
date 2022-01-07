; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_adp5520_bl.c_adp5520_bl_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.backlight_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.adp5520_bl = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }

@ADP5520_MODE_STATUS = common dso_local global i32 0, align 4
@ADP5520_BL_EN = common dso_local global i32 0, align 4
@adp5520_bl_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @adp5520_bl_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_bl_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.backlight_device*, align 8
  %4 = alloca %struct.adp5520_bl*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.backlight_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.backlight_device* %6, %struct.backlight_device** %3, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %8 = call %struct.adp5520_bl* @bl_get_data(%struct.backlight_device* %7)
  store %struct.adp5520_bl* %8, %struct.adp5520_bl** %4, align 8
  %9 = load %struct.adp5520_bl*, %struct.adp5520_bl** %4, align 8
  %10 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %13 = load i32, i32* @ADP5520_BL_EN, align 4
  %14 = call i32 @adp5520_clr_bits(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.adp5520_bl*, %struct.adp5520_bl** %4, align 8
  %16 = getelementptr inbounds %struct.adp5520_bl, %struct.adp5520_bl* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.backlight_device*, %struct.backlight_device** %3, align 8
  %23 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @sysfs_remove_group(i32* %24, i32* @adp5520_bl_attr_group)
  br label %26

26:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.backlight_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.adp5520_bl* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
