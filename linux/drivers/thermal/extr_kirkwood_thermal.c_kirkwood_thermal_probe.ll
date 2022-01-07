; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_kirkwood_thermal.c_kirkwood_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_kirkwood_thermal.c_kirkwood_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.kirkwood_thermal_priv = type { %struct.thermal_zone_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"kirkwood_thermal\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to register thermal zone device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kirkwood_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.kirkwood_thermal_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %4, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kirkwood_thermal_priv* @devm_kzalloc(i32* %8, i32 8, i32 %9)
  store %struct.kirkwood_thermal_priv* %10, %struct.kirkwood_thermal_priv** %5, align 8
  %11 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %5, align 8
  %12 = icmp ne %struct.kirkwood_thermal_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %6, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %6, align 8
  %23 = call %struct.thermal_zone_device* @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %5, align 8
  %25 = getelementptr inbounds %struct.kirkwood_thermal_priv, %struct.kirkwood_thermal_priv* %24, i32 0, i32 0
  store %struct.thermal_zone_device* %23, %struct.thermal_zone_device** %25, align 8
  %26 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %5, align 8
  %27 = getelementptr inbounds %struct.kirkwood_thermal_priv, %struct.kirkwood_thermal_priv* %26, i32 0, i32 0
  %28 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %27, align 8
  %29 = call i64 @IS_ERR(%struct.thermal_zone_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %5, align 8
  %33 = getelementptr inbounds %struct.kirkwood_thermal_priv, %struct.kirkwood_thermal_priv* %32, i32 0, i32 0
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %33, align 8
  %35 = call i32 @PTR_ERR(%struct.thermal_zone_device* %34)
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %16
  %37 = load %struct.kirkwood_thermal_priv*, %struct.kirkwood_thermal_priv** %5, align 8
  %38 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.kirkwood_thermal_priv* %37, i32* @ops, i32* null, i32 0, i32 0)
  store %struct.thermal_zone_device* %38, %struct.thermal_zone_device** %4, align 8
  %39 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %40 = call i64 @IS_ERR(%struct.thermal_zone_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %47 = call i32 @PTR_ERR(%struct.thermal_zone_device* %46)
  store i32 %47, i32* %2, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %51 = call i32 @platform_set_drvdata(%struct.platform_device* %49, %struct.thermal_zone_device* %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %42, %31, %13
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.kirkwood_thermal_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, %struct.kirkwood_thermal_priv*, i32*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
