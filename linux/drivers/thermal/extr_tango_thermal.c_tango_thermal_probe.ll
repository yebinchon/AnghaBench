; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_tango_thermal.c_tango_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_tango_thermal.c_tango_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.resource = type { i32 }
%struct.tango_thermal_priv = type { i32, i32 }
%struct.thermal_zone_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IDX_MIN = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tango_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tango_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.tango_thermal_priv*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tango_thermal_priv* @devm_kzalloc(i32* %8, i32 8, i32 %9)
  store %struct.tango_thermal_priv* %10, %struct.tango_thermal_priv** %5, align 8
  %11 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %12 = icmp ne %struct.tango_thermal_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %51

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = call %struct.resource* @platform_get_resource(%struct.platform_device* %17, i32 %18, i32 0)
  store %struct.resource* %19, %struct.resource** %4, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = call i32 @devm_ioremap_resource(i32* %21, %struct.resource* %22)
  %24 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %25 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %27 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %16
  %32 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %33 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.tango_thermal_priv* %38)
  %40 = load i32, i32* @IDX_MIN, align 4
  %41 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %42 = getelementptr inbounds %struct.tango_thermal_priv, %struct.tango_thermal_priv* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %44 = call i32 @tango_thermal_init(%struct.tango_thermal_priv* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load %struct.tango_thermal_priv*, %struct.tango_thermal_priv** %5, align 8
  %48 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32* %46, i32 0, %struct.tango_thermal_priv* %47, i32* @ops)
  store %struct.thermal_zone_device* %48, %struct.thermal_zone_device** %6, align 8
  %49 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %50 = call i32 @PTR_ERR_OR_ZERO(%struct.thermal_zone_device* %49)
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %36, %31, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.tango_thermal_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tango_thermal_priv*) #1

declare dso_local i32 @tango_thermal_init(%struct.tango_thermal_priv*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32*, i32, %struct.tango_thermal_priv*, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
