; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/broadcom/extr_brcmstb_thermal.c_brcmstb_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.brcmstb_thermal_priv = type { %struct.thermal_zone_device*, i32*, %struct.thermal_zone_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@of_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not register sensor: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"could not get IRQ\0A\00", align 1
@brcmstb_tmon_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not request IRQ: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"registered AVS TMON of-sensor driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @brcmstb_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.brcmstb_thermal_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.brcmstb_thermal_priv* @devm_kzalloc(i32* %10, i32 24, i32 %11)
  store %struct.brcmstb_thermal_priv* %12, %struct.brcmstb_thermal_priv** %5, align 8
  %13 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %14 = icmp ne %struct.brcmstb_thermal_priv* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %95

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %6, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %6, align 8
  %25 = call %struct.thermal_zone_device* @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  %26 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %27 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %26, i32 0, i32 2
  store %struct.thermal_zone_device* %25, %struct.thermal_zone_device** %27, align 8
  %28 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %29 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %28, i32 0, i32 2
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %29, align 8
  %31 = call i64 @IS_ERR(%struct.thermal_zone_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %18
  %34 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %35 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %34, i32 0, i32 2
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.thermal_zone_device* %36)
  store i32 %37, i32* %2, align 4
  br label %95

38:                                               ; preds = %18
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %42 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %45 = call i32 @platform_set_drvdata(%struct.platform_device* %43, %struct.brcmstb_thermal_priv* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %49 = call %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32* %47, i32 0, %struct.brcmstb_thermal_priv* %48, i32* @of_ops)
  store %struct.thermal_zone_device* %49, %struct.thermal_zone_device** %4, align 8
  %50 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %51 = call i64 @IS_ERR(%struct.thermal_zone_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %55 = call i32 @PTR_ERR(%struct.thermal_zone_device* %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %95

61:                                               ; preds = %38
  %62 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %63 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %64 = getelementptr inbounds %struct.brcmstb_thermal_priv, %struct.brcmstb_thermal_priv* %63, i32 0, i32 0
  store %struct.thermal_zone_device* %62, %struct.thermal_zone_device** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = call i32 @platform_get_irq(%struct.platform_device* %65, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %95

74:                                               ; preds = %61
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @brcmstb_tmon_irq_thread, align 4
  %79 = load i32, i32* @IRQF_ONESHOT, align 4
  %80 = load i32, i32* @DRV_NAME, align 4
  %81 = load %struct.brcmstb_thermal_priv*, %struct.brcmstb_thermal_priv** %5, align 8
  %82 = call i32 @devm_request_threaded_irq(i32* %76, i32 %77, i32* null, i32 %78, i32 %79, i32 %80, %struct.brcmstb_thermal_priv* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %74
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_info(i32* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %85, %69, %53, %33, %15
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.brcmstb_thermal_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.brcmstb_thermal_priv*) #1

declare dso_local %struct.thermal_zone_device* @devm_thermal_zone_of_sensor_register(i32*, i32, %struct.brcmstb_thermal_priv*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.brcmstb_thermal_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
