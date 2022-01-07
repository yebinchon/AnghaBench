; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_spear_thermal.c_spear_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_spear_thermal.c_spear_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.spear_thermal_dev = type { i32, %struct.thermal_zone_device*, %struct.thermal_zone_device* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"st,thermal-flags\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed: DT Pdata not passed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Can't get clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Can't enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"spear_thermal\00", align 1
@ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"thermal zone device is NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Thermal Sensor Loaded at: 0x%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.spear_thermal_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.thermal_zone_device* null, %struct.thermal_zone_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.device_node*, %struct.device_node** %6, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %125

26:                                               ; preds = %16
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.spear_thermal_dev* @devm_kzalloc(%struct.TYPE_5__* %28, i32 24, i32 %29)
  store %struct.spear_thermal_dev* %30, %struct.spear_thermal_dev** %5, align 8
  %31 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %32 = icmp ne %struct.spear_thermal_dev* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %125

36:                                               ; preds = %26
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %7, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load %struct.resource*, %struct.resource** %7, align 8
  %43 = call %struct.thermal_zone_device* @devm_ioremap_resource(%struct.TYPE_5__* %41, %struct.resource* %42)
  %44 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %45 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %44, i32 0, i32 2
  store %struct.thermal_zone_device* %43, %struct.thermal_zone_device** %45, align 8
  %46 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %47 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %46, i32 0, i32 2
  %48 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %47, align 8
  %49 = call i64 @IS_ERR(%struct.thermal_zone_device* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %53 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %52, i32 0, i32 2
  %54 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %53, align 8
  %55 = call i32 @PTR_ERR(%struct.thermal_zone_device* %54)
  store i32 %55, i32* %2, align 4
  br label %125

56:                                               ; preds = %36
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call %struct.thermal_zone_device* @devm_clk_get(%struct.TYPE_5__* %58, i32* null)
  %60 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %61 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %60, i32 0, i32 1
  store %struct.thermal_zone_device* %59, %struct.thermal_zone_device** %61, align 8
  %62 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %63 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %62, i32 0, i32 1
  %64 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %63, align 8
  %65 = call i64 @IS_ERR(%struct.thermal_zone_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_5__* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %72 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %71, i32 0, i32 1
  %73 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.thermal_zone_device* %73)
  store i32 %74, i32* %2, align 4
  br label %125

75:                                               ; preds = %56
  %76 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %77 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %76, i32 0, i32 1
  %78 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %77, align 8
  %79 = call i32 @clk_enable(%struct.thermal_zone_device* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %125

87:                                               ; preds = %75
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %90 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %92 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %95 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %94, i32 0, i32 2
  %96 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %95, align 8
  %97 = call i32 @writel_relaxed(i32 %93, %struct.thermal_zone_device* %96)
  %98 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %99 = call %struct.thermal_zone_device* @thermal_zone_device_register(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, %struct.spear_thermal_dev* %98, i32* @ops, i32* null, i32 0, i32 0)
  store %struct.thermal_zone_device* %99, %struct.thermal_zone_device** %4, align 8
  %100 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %101 = call i64 @IS_ERR(%struct.thermal_zone_device* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %87
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_5__* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %108 = call i32 @PTR_ERR(%struct.thermal_zone_device* %107)
  store i32 %108, i32* %8, align 4
  br label %119

109:                                              ; preds = %87
  %110 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %111 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %112 = call i32 @platform_set_drvdata(%struct.platform_device* %110, %struct.thermal_zone_device* %111)
  %113 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %114 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %113, i32 0, i32 0
  %115 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %116 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %115, i32 0, i32 2
  %117 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %116, align 8
  %118 = call i32 @dev_info(i32* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), %struct.thermal_zone_device* %117)
  store i32 0, i32* %2, align 4
  br label %125

119:                                              ; preds = %103
  %120 = load %struct.spear_thermal_dev*, %struct.spear_thermal_dev** %5, align 8
  %121 = getelementptr inbounds %struct.spear_thermal_dev, %struct.spear_thermal_dev* %120, i32 0, i32 1
  %122 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %121, align 8
  %123 = call i32 @clk_disable(%struct.thermal_zone_device* %122)
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %119, %109, %82, %67, %51, %33, %20
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.spear_thermal_dev* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.thermal_zone_device* @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @devm_clk_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @clk_enable(%struct.thermal_zone_device*) #1

declare dso_local i32 @writel_relaxed(i32, %struct.thermal_zone_device*) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_device_register(i8*, i32, i32, %struct.spear_thermal_dev*, i32*, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.thermal_zone_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, %struct.thermal_zone_device*) #1

declare dso_local i32 @clk_disable(%struct.thermal_zone_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
