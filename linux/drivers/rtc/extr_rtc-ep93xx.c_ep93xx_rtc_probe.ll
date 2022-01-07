; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ep93xx.c_ep93xx_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ep93xx_rtc = type { %struct.TYPE_7__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ep93xx_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@ep93xx_rtc_sysfs_files = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ep93xx_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ep93xx_rtc*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ep93xx_rtc* @devm_kzalloc(i32* %8, i32 16, i32 %9)
  store %struct.ep93xx_rtc* %10, %struct.ep93xx_rtc** %4, align 8
  %11 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %12 = icmp ne %struct.ep93xx_rtc* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call %struct.TYPE_7__* @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %25 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %24, i32 0, i32 1
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %25, align 8
  %26 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %27 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i64 @IS_ERR(%struct.TYPE_7__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %33 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.TYPE_7__* %34)
  store i32 %35, i32* %2, align 4
  br label %78

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.ep93xx_rtc* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.TYPE_7__* @devm_rtc_allocate_device(i32* %41)
  %43 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %44 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %43, i32 0, i32 0
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %46 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i64 @IS_ERR(%struct.TYPE_7__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %52 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = call i32 @PTR_ERR(%struct.TYPE_7__* %53)
  store i32 %54, i32* %2, align 4
  br label %78

55:                                               ; preds = %36
  %56 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %57 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32* @ep93xx_rtc_ops, i32** %59, align 8
  %60 = load i32, i32* @U32_MAX, align 4
  %61 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %62 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %66 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call i32 @rtc_add_group(%struct.TYPE_7__* %67, i32* @ep93xx_rtc_sysfs_files)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %78

73:                                               ; preds = %55
  %74 = load %struct.ep93xx_rtc*, %struct.ep93xx_rtc** %4, align 8
  %75 = getelementptr inbounds %struct.ep93xx_rtc, %struct.ep93xx_rtc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @rtc_register_device(%struct.TYPE_7__* %76)
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %73, %71, %50, %31, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.ep93xx_rtc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ep93xx_rtc*) #1

declare dso_local %struct.TYPE_7__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_add_group(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
