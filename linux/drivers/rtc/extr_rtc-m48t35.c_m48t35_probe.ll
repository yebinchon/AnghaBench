; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t35.c_m48t35_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-m48t35.c_m48t35_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.m48t35_priv = type { i32, i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"m48t35\00", align 1
@m48t35_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @m48t35_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m48t35_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.m48t35_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @IORESOURCE_MEM, align 4
  %8 = call %struct.resource* @platform_get_resource(%struct.platform_device* %6, i32 %7, i32 0)
  store %struct.resource* %8, %struct.resource** %4, align 8
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = icmp ne %struct.resource* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.m48t35_priv* @devm_kzalloc(i32* %16, i32 20, i32 %17)
  store %struct.m48t35_priv* %18, %struct.m48t35_priv** %5, align 8
  %19 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %20 = icmp ne %struct.m48t35_priv* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %86

24:                                               ; preds = %14
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = call i32 @resource_size(%struct.resource* %25)
  %27 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %28 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %4, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %35 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @devm_request_mem_region(i32* %30, i32 %33, i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %86

45:                                               ; preds = %24
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %50 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %54 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %57 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @devm_ioremap(i32* %52, i32 %55, i32 %58)
  %60 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %61 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %63 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %45
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %45
  %70 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %71 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %70, i32 0, i32 1
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %75 = call i32 @platform_set_drvdata(%struct.platform_device* %73, %struct.m48t35_priv* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load i32, i32* @THIS_MODULE, align 4
  %79 = call i32 @devm_rtc_device_register(i32* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @m48t35_ops, i32 %78)
  %80 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %81 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.m48t35_priv*, %struct.m48t35_priv** %5, align 8
  %83 = getelementptr inbounds %struct.m48t35_priv, %struct.m48t35_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @PTR_ERR_OR_ZERO(i32 %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %69, %66, %42, %21, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.m48t35_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.m48t35_priv*) #1

declare dso_local i32 @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
