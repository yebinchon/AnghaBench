; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_bxt_pmic_thermal.c_pmic_thermal_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_bxt_pmic_thermal.c_pmic_thermal_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.thermal_zone_device = type { i32 }
%struct.pmic_thermal_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.intel_soc_pmic = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.TYPE_8__ = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@THERMAL_EVENT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pmic_thermal_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_thermal_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.thermal_zone_device*, align 8
  %8 = alloca %struct.pmic_thermal_data*, align 8
  %9 = alloca %struct.intel_soc_pmic*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.platform_device*
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %24)
  store %struct.intel_soc_pmic* %25, %struct.intel_soc_pmic** %9, align 8
  %26 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %9, align 8
  %27 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %26, i32 0, i32 0
  %28 = load %struct.regmap*, %struct.regmap** %27, align 8
  store %struct.regmap* %28, %struct.regmap** %10, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = call %struct.TYPE_8__* @platform_get_device_id(%struct.platform_device* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.pmic_thermal_data*
  store %struct.pmic_thermal_data* %33, %struct.pmic_thermal_data** %8, align 8
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %141, %2
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %37 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %144

40:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %137, %40
  %42 = load i32, i32* %17, align 4
  %43 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %44 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %42, %50
  br i1 %51, label %52, label %140

52:                                               ; preds = %41
  %53 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %54 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %16, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %17, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %67 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load %struct.regmap*, %struct.regmap** %10, align 8
  %80 = load i32, i32* %14, align 4
  %81 = call i64 @regmap_read(%struct.regmap* %79, i32 %80, i32* %18)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %52
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %84, i32* %3, align 4
  br label %146

85:                                               ; preds = %52
  %86 = load i32, i32* %18, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %12, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %137

93:                                               ; preds = %85
  %94 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %95 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %15, align 4
  %107 = load %struct.regmap*, %struct.regmap** %10, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i64 @regmap_read(%struct.regmap* %107, i32 %108, i32* %18)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %93
  %112 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %112, i32* %3, align 4
  br label %146

113:                                              ; preds = %93
  %114 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %8, align 8
  %115 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i32 %121)
  store %struct.thermal_zone_device* %122, %struct.thermal_zone_device** %7, align 8
  %123 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %124 = call i32 @IS_ERR(%struct.thermal_zone_device* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %113
  %127 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %7, align 8
  %128 = load i32, i32* @THERMAL_EVENT_UNSPECIFIED, align 4
  %129 = call i32 @thermal_zone_device_update(%struct.thermal_zone_device* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %113
  %131 = load %struct.regmap*, %struct.regmap** %10, align 8
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %12, align 4
  %135 = and i32 %133, %134
  %136 = call i32 @regmap_write(%struct.regmap* %131, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %130, %92
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  br label %41

140:                                              ; preds = %41
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %16, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %16, align 4
  br label %34

144:                                              ; preds = %34
  %145 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %111, %83
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local %struct.TYPE_8__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i64 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local %struct.thermal_zone_device* @thermal_zone_get_zone_by_name(i32) #1

declare dso_local i32 @IS_ERR(%struct.thermal_zone_device*) #1

declare dso_local i32 @thermal_zone_device_update(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
