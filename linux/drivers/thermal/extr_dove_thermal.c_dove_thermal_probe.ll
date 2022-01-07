; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_dove_thermal.c_dove_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_dove_thermal.c_dove_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.dove_thermal_priv = type { %struct.thermal_zone_device*, %struct.thermal_zone_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to initialize sensor\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dove_thermal\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to register thermal zone device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dove_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.dove_thermal_priv*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %4, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dove_thermal_priv* @devm_kzalloc(i32* %9, i32 16, i32 %10)
  store %struct.dove_thermal_priv* %11, %struct.dove_thermal_priv** %5, align 8
  %12 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %13 = icmp ne %struct.dove_thermal_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %85

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load i32, i32* @IORESOURCE_MEM, align 4
  %20 = call %struct.resource* @platform_get_resource(%struct.platform_device* %18, i32 %19, i32 0)
  store %struct.resource* %20, %struct.resource** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load %struct.resource*, %struct.resource** %6, align 8
  %24 = call i8* @devm_ioremap_resource(i32* %22, %struct.resource* %23)
  %25 = bitcast i8* %24 to %struct.thermal_zone_device*
  %26 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %27 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %26, i32 0, i32 1
  store %struct.thermal_zone_device* %25, %struct.thermal_zone_device** %27, align 8
  %28 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %29 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %28, i32 0, i32 1
  %30 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %29, align 8
  %31 = call i64 @IS_ERR(%struct.thermal_zone_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %35 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %34, i32 0, i32 1
  %36 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %35, align 8
  %37 = call i32 @PTR_ERR(%struct.thermal_zone_device* %36)
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %17
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = load i32, i32* @IORESOURCE_MEM, align 4
  %41 = call %struct.resource* @platform_get_resource(%struct.platform_device* %39, i32 %40, i32 1)
  store %struct.resource* %41, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %6, align 8
  %45 = call i8* @devm_ioremap_resource(i32* %43, %struct.resource* %44)
  %46 = bitcast i8* %45 to %struct.thermal_zone_device*
  %47 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %48 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %47, i32 0, i32 0
  store %struct.thermal_zone_device* %46, %struct.thermal_zone_device** %48, align 8
  %49 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %50 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %49, i32 0, i32 0
  %51 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %50, align 8
  %52 = call i64 @IS_ERR(%struct.thermal_zone_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %38
  %55 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %56 = getelementptr inbounds %struct.dove_thermal_priv, %struct.dove_thermal_priv* %55, i32 0, i32 0
  %57 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %56, align 8
  %58 = call i32 @PTR_ERR(%struct.thermal_zone_device* %57)
  store i32 %58, i32* %2, align 4
  br label %85

59:                                               ; preds = %38
  %60 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %61 = call i32 @dove_init_sensor(%struct.dove_thermal_priv* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %85

69:                                               ; preds = %59
  %70 = load %struct.dove_thermal_priv*, %struct.dove_thermal_priv** %5, align 8
  %71 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, %struct.dove_thermal_priv* %70, i32* @ops, i32* null, i32 0, i32 0)
  store %struct.thermal_zone_device* %71, %struct.thermal_zone_device** %4, align 8
  %72 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %73 = call i64 @IS_ERR(%struct.thermal_zone_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %80 = call i32 @PTR_ERR(%struct.thermal_zone_device* %79)
  store i32 %80, i32* %2, align 4
  br label %85

81:                                               ; preds = %69
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.thermal_zone_device* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %75, %64, %54, %33, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.dove_thermal_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @dove_init_sensor(%struct.dove_thermal_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, %struct.dove_thermal_priv*, i32*, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
