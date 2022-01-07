; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.goldfish_battery_data = type { i64, i8*, i8*, i32*, i32 }
%struct.power_supply_config = type { %struct.goldfish_battery_data* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"platform_get_resource failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to remap MMIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"platform_get_irq failed\0A\00", align 1
@goldfish_battery_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@ac_desc = common dso_local global i32 0, align 4
@battery_desc = common dso_local global i32 0, align 4
@BATTERY_INT_ENABLE = common dso_local global i32 0, align 4
@BATTERY_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.goldfish_battery_data*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.goldfish_battery_data* @devm_kzalloc(i32* %10, i32 40, i32 %11)
  store %struct.goldfish_battery_data* %12, %struct.goldfish_battery_data** %6, align 8
  %13 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %14 = icmp eq %struct.goldfish_battery_data* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %132

18:                                               ; preds = %1
  %19 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %20 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %19, i32 0, i32 4
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %5, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = icmp eq %struct.resource* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %18
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %132

33:                                               ; preds = %18
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = load %struct.resource*, %struct.resource** %5, align 8
  %37 = getelementptr inbounds %struct.resource, %struct.resource* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call i32 @resource_size(%struct.resource* %39)
  %41 = call i32* @devm_ioremap(i32* %35, i32 %38, i32 %40)
  %42 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %43 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %42, i32 0, i32 3
  store i32* %41, i32** %43, align 8
  %44 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %45 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %33
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %132

54:                                               ; preds = %33
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = call i64 @platform_get_irq(%struct.platform_device* %55, i32 0)
  %57 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %58 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %60 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %64, i32 0, i32 0
  %66 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %132

69:                                               ; preds = %54
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %73 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @goldfish_battery_interrupt, align 4
  %76 = load i32, i32* @IRQF_SHARED, align 4
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %81 = call i32 @devm_request_irq(i32* %71, i64 %74, i32 %75, i32 %76, i32 %79, %struct.goldfish_battery_data* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %132

86:                                               ; preds = %69
  %87 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %88 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.goldfish_battery_data* %87, %struct.goldfish_battery_data** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i8* @power_supply_register(i32* %90, i32* @ac_desc, %struct.power_supply_config* %7)
  %92 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %93 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %95 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @IS_ERR(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %101 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @PTR_ERR(i8* %102)
  store i32 %103, i32* %2, align 4
  br label %132

104:                                              ; preds = %86
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i8* @power_supply_register(i32* %106, i32* @battery_desc, %struct.power_supply_config* %7)
  %108 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %109 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %111 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i64 @IS_ERR(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %104
  %116 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %117 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @power_supply_unregister(i8* %118)
  %120 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %121 = getelementptr inbounds %struct.goldfish_battery_data, %struct.goldfish_battery_data* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @PTR_ERR(i8* %122)
  store i32 %123, i32* %2, align 4
  br label %132

124:                                              ; preds = %104
  %125 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %126 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %127 = call i32 @platform_set_drvdata(%struct.platform_device* %125, %struct.goldfish_battery_data* %126)
  %128 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %6, align 8
  %129 = load i32, i32* @BATTERY_INT_ENABLE, align 4
  %130 = load i32, i32* @BATTERY_INT_MASK, align 4
  %131 = call i32 @GOLDFISH_BATTERY_WRITE(%struct.goldfish_battery_data* %128, i32 %129, i32 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %124, %115, %99, %84, %63, %48, %27, %15
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.goldfish_battery_data* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #2

declare dso_local i32 @dev_err(i32*, i8*) #2

declare dso_local i32* @devm_ioremap(i32*, i32, i32) #2

declare dso_local i32 @resource_size(%struct.resource*) #2

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #2

declare dso_local i32 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.goldfish_battery_data*) #2

declare dso_local i8* @power_supply_register(i32*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @power_supply_unregister(i8*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.goldfish_battery_data*) #2

declare dso_local i32 @GOLDFISH_BATTERY_WRITE(%struct.goldfish_battery_data*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
