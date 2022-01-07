; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77650-charger.c_max77650_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32, %struct.device* }
%struct.power_supply_config = type { %struct.max77650_charger_data*, i32 }
%struct.max77650_charger_data = type { %struct.device*, i32 }
%struct.power_supply = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"CHG\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"CHGIN\00", align 1
@max77650_charger_check_status = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"chg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"chgin\00", align 1
@max77650_battery_desc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"input-voltage-min-microvolt\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"input-current-limit-microamp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @max77650_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77650_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_config, align 8
  %5 = alloca %struct.max77650_charger_data*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = bitcast %struct.power_supply_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.max77650_charger_data* @devm_kzalloc(%struct.device* %19, i32 16, i32 %20)
  store %struct.max77650_charger_data* %21, %struct.max77650_charger_data** %5, align 8
  %22 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %23 = icmp ne %struct.max77650_charger_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %131

27:                                               ; preds = %1
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %30 = call i32 @platform_set_drvdata(%struct.platform_device* %28, %struct.max77650_charger_data* %29)
  %31 = load %struct.device*, %struct.device** %8, align 8
  %32 = call i32 @dev_get_regmap(%struct.device* %31, i32* null)
  %33 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %34 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %36 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %131

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %45 = getelementptr inbounds %struct.max77650_charger_data, %struct.max77650_charger_data* %44, i32 0, i32 0
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.device*, %struct.device** %7, align 8
  %47 = getelementptr inbounds %struct.device, %struct.device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  %50 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %51 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %4, i32 0, i32 0
  store %struct.max77650_charger_data* %50, %struct.max77650_charger_data** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = call i32 @platform_get_irq_byname(%struct.platform_device* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %2, align 4
  br label %131

58:                                               ; preds = %42
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = call i32 @platform_get_irq_byname(%struct.platform_device* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %2, align 4
  br label %131

65:                                               ; preds = %58
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @max77650_charger_check_status, align 4
  %69 = load i32, i32* @IRQF_ONESHOT, align 4
  %70 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %71 = call i32 @devm_request_any_context_irq(%struct.device* %66, i32 %67, i32 %68, i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.max77650_charger_data* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %131

76:                                               ; preds = %65
  %77 = load %struct.device*, %struct.device** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @max77650_charger_check_status, align 4
  %80 = load i32, i32* @IRQF_ONESHOT, align 4
  %81 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %82 = call i32 @devm_request_any_context_irq(%struct.device* %77, i32 %78, i32 %79, i32 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct.max77650_charger_data* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %131

87:                                               ; preds = %76
  %88 = load %struct.device*, %struct.device** %7, align 8
  %89 = call %struct.power_supply* @devm_power_supply_register(%struct.device* %88, i32* @max77650_battery_desc, %struct.power_supply_config* %4)
  store %struct.power_supply* %89, %struct.power_supply** %6, align 8
  %90 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %91 = call i64 @IS_ERR(%struct.power_supply* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %95 = call i32 @PTR_ERR(%struct.power_supply* %94)
  store i32 %95, i32* %2, align 4
  br label %131

96:                                               ; preds = %87
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = getelementptr inbounds %struct.device, %struct.device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @of_property_read_u32(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32* %12)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @max77650_charger_set_vchgin_min(%struct.max77650_charger_data* %104, i32 %105)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %131

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111, %96
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = getelementptr inbounds %struct.device, %struct.device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @of_property_read_u32(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32* %12)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %112
  %120 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @max77650_charger_set_ichgin_lim(%struct.max77650_charger_data* %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %2, align 4
  br label %131

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127, %112
  %129 = load %struct.max77650_charger_data*, %struct.max77650_charger_data** %5, align 8
  %130 = call i32 @max77650_charger_enable(%struct.max77650_charger_data* %129)
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %125, %109, %93, %85, %74, %63, %56, %39, %24
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.max77650_charger_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.max77650_charger_data*) #2

declare dso_local i32 @dev_get_regmap(%struct.device*, i32*) #2

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #2

declare dso_local i32 @devm_request_any_context_irq(%struct.device*, i32, i32, i32, i8*, %struct.max77650_charger_data*) #2

declare dso_local %struct.power_supply* @devm_power_supply_register(%struct.device*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(%struct.power_supply*) #2

declare dso_local i32 @PTR_ERR(%struct.power_supply*) #2

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #2

declare dso_local i32 @max77650_charger_set_vchgin_min(%struct.max77650_charger_data*, i32) #2

declare dso_local i32 @max77650_charger_set_ichgin_lim(%struct.max77650_charger_data*, i32) #2

declare dso_local i32 @max77650_charger_enable(%struct.max77650_charger_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
