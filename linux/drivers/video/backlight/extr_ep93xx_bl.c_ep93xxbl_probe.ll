; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ep93xx_bl.c_ep93xxbl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_ep93xx_bl.c_ep93xxbl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.ep93xxbl = type { i32 }
%struct.backlight_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.backlight_properties = type { i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@EP93XX_MAX_BRIGHT = common dso_local global i32 0, align 4
@ep93xxbl_ops = common dso_local global i32 0, align 4
@EP93XX_DEF_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xxbl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxbl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xxbl*, align 8
  %5 = alloca %struct.backlight_device*, align 8
  %6 = alloca %struct.backlight_properties, align 4
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ep93xxbl* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.ep93xxbl* %11, %struct.ep93xxbl** %4, align 8
  %12 = load %struct.ep93xxbl*, %struct.ep93xxbl** %4, align 8
  %13 = icmp ne %struct.ep93xxbl* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %75

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %7, align 8
  %21 = load %struct.resource*, %struct.resource** %7, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %75

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %7, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = call i32 @resource_size(%struct.resource* %32)
  %34 = call i32 @devm_ioremap(i32* %28, i32 %31, i32 %33)
  %35 = load %struct.ep93xxbl*, %struct.ep93xxbl** %4, align 8
  %36 = getelementptr inbounds %struct.ep93xxbl, %struct.ep93xxbl* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ep93xxbl*, %struct.ep93xxbl** %4, align 8
  %38 = getelementptr inbounds %struct.ep93xxbl, %struct.ep93xxbl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %26
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %75

44:                                               ; preds = %26
  %45 = call i32 @memset(%struct.backlight_properties* %6, i32 0, i32 8)
  %46 = load i32, i32* @BACKLIGHT_RAW, align 4
  %47 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @EP93XX_MAX_BRIGHT, align 4
  %49 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = load %struct.ep93xxbl*, %struct.ep93xxbl** %4, align 8
  %58 = call %struct.backlight_device* @devm_backlight_device_register(i32* %51, i32 %54, i32* %56, %struct.ep93xxbl* %57, i32* @ep93xxbl_ops, %struct.backlight_properties* %6)
  store %struct.backlight_device* %58, %struct.backlight_device** %5, align 8
  %59 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %60 = call i64 @IS_ERR(%struct.backlight_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  %63 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %64 = call i32 @PTR_ERR(%struct.backlight_device* %63)
  store i32 %64, i32* %2, align 4
  br label %75

65:                                               ; preds = %44
  %66 = load i32, i32* @EP93XX_DEF_BRIGHT, align 4
  %67 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %68 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 4
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.backlight_device* %71)
  %73 = load %struct.backlight_device*, %struct.backlight_device** %5, align 8
  %74 = call i32 @ep93xxbl_update_status(%struct.backlight_device* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %65, %62, %41, %23, %14
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ep93xxbl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @devm_backlight_device_register(i32*, i32, i32*, %struct.ep93xxbl*, i32*, %struct.backlight_properties*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.backlight_device*) #1

declare dso_local i32 @ep93xxbl_update_status(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
