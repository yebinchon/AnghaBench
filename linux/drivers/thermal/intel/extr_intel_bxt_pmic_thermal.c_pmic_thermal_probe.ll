; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_bxt_pmic_thermal.c_pmic_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/intel/extr_intel_bxt_pmic_thermal.c_pmic_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap_irq_chip_data = type { i32 }
%struct.pmic_thermal_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.intel_soc_pmic = type { %struct.regmap_irq_chip_data*, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"Failed to get struct intel_soc_pmic pointer\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No thermal data initialized!!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to get virq by irq %d\0A\00", align 1
@pmic_thermal_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"pmic_thermal\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"request irq(%d) failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pmic_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmic_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.regmap_irq_chip_data*, align 8
  %5 = alloca %struct.pmic_thermal_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_soc_pmic*, align 8
  %13 = alloca %struct.regmap*, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %14, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %22)
  store %struct.intel_soc_pmic* %23, %struct.intel_soc_pmic** %12, align 8
  %24 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %12, align 8
  %25 = icmp ne %struct.intel_soc_pmic* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %14, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %151

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.pmic_thermal_data*
  store %struct.pmic_thermal_data* %36, %struct.pmic_thermal_data** %5, align 8
  %37 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %5, align 8
  %38 = icmp ne %struct.pmic_thermal_data* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %14, align 8
  %41 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %151

44:                                               ; preds = %31
  %45 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %12, align 8
  %46 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %45, i32 0, i32 1
  %47 = load %struct.regmap*, %struct.regmap** %46, align 8
  store %struct.regmap* %47, %struct.regmap** %13, align 8
  %48 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %12, align 8
  %49 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %48, i32 0, i32 0
  %50 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %49, align 8
  store %struct.regmap_irq_chip_data* %50, %struct.regmap_irq_chip_data** %4, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %85, %44
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @ENXIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %88

58:                                               ; preds = %51
  %59 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58
  %65 = load %struct.device*, %struct.device** %14, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %2, align 4
  br label %151

69:                                               ; preds = %58
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @pmic_thermal_irq_handler, align 4
  %74 = load i32, i32* @IRQF_ONESHOT, align 4
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = call i32 @devm_request_threaded_irq(%struct.device* %71, i32 %72, i32* null, i32 %73, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.platform_device* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %69
  %80 = load %struct.device*, %struct.device** %14, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %151

85:                                               ; preds = %69
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %51

88:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %147, %88
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %5, align 8
  %92 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %150

95:                                               ; preds = %89
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %143, %95
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %5, align 8
  %99 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %97, %105
  br i1 %106, label %107, label %146

107:                                              ; preds = %96
  %108 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %5, align 8
  %109 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load %struct.pmic_thermal_data*, %struct.pmic_thermal_data** %5, align 8
  %122 = getelementptr inbounds %struct.pmic_thermal_data, %struct.pmic_thermal_data* %121, i32 0, i32 1
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  %134 = load %struct.regmap*, %struct.regmap** %13, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %16, align 4
  %137 = call i32 @regmap_update_bits(%struct.regmap* %134, i32 %135, i32 %136, i32 0)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %107
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %2, align 4
  br label %151

142:                                              ; preds = %107
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %10, align 4
  br label %96

146:                                              ; preds = %96
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %89

150:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %140, %79, %64, %39, %26
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @platform_get_device_id(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.platform_device*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
