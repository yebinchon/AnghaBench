; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1286.c_ds1286_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32 }
%struct.resource = type { i32 }
%struct.ds1286_priv = type { %struct.rtc_device*, i32, %struct.rtc_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ds1286\00", align 1
@ds1286_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1286_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1286_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ds1286_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ds1286_priv* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.ds1286_priv* %10, %struct.ds1286_priv** %6, align 8
  %11 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %12 = icmp ne %struct.ds1286_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %5, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = call %struct.rtc_device* @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %25 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %24, i32 0, i32 2
  store %struct.rtc_device* %23, %struct.rtc_device** %25, align 8
  %26 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %27 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %26, i32 0, i32 2
  %28 = load %struct.rtc_device*, %struct.rtc_device** %27, align 8
  %29 = call i64 @IS_ERR(%struct.rtc_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %33 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %32, i32 0, i32 2
  %34 = load %struct.rtc_device*, %struct.rtc_device** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.rtc_device* %34)
  store i32 %35, i32* %2, align 4
  br label %57

36:                                               ; preds = %16
  %37 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %40, %struct.ds1286_priv* %41)
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load i32, i32* @THIS_MODULE, align 4
  %46 = call %struct.rtc_device* @devm_rtc_device_register(i32* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @ds1286_ops, i32 %45)
  store %struct.rtc_device* %46, %struct.rtc_device** %4, align 8
  %47 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %48 = call i64 @IS_ERR(%struct.rtc_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %52 = call i32 @PTR_ERR(%struct.rtc_device* %51)
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %36
  %54 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %55 = load %struct.ds1286_priv*, %struct.ds1286_priv** %6, align 8
  %56 = getelementptr inbounds %struct.ds1286_priv, %struct.ds1286_priv* %55, i32 0, i32 0
  store %struct.rtc_device* %54, %struct.rtc_device** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %50, %31, %13
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ds1286_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.rtc_device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds1286_priv*) #1

declare dso_local %struct.rtc_device* @devm_rtc_device_register(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
