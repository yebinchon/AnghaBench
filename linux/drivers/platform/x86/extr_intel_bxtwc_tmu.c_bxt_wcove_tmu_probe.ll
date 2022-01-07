; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_bxtwc_tmu.c_bxt_wcove_tmu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_bxtwc_tmu.c_bxt_wcove_tmu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_soc_pmic = type { %struct.regmap_irq_chip_data*, i32 }
%struct.regmap_irq_chip_data = type { i32 }
%struct.wcove_tmu = type { i32, i32, %struct.TYPE_4__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to get virtual interrupt=%d\0A\00", align 1
@bxt_wcove_tmu_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"bxt_wcove_tmu\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"request irq failed: %d,virq: %d\0A\00", align 1
@BXTWC_MTMUIRQ_REG = common dso_local global i32 0, align 4
@BXTWC_TMU_ALRM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bxt_wcove_tmu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_wcove_tmu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_soc_pmic*, align 8
  %5 = alloca %struct.regmap_irq_chip_data*, align 8
  %6 = alloca %struct.wcove_tmu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.intel_soc_pmic* @dev_get_drvdata(i32 %13)
  store %struct.intel_soc_pmic* %14, %struct.intel_soc_pmic** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.wcove_tmu* @devm_kzalloc(%struct.TYPE_4__* %16, i32 16, i32 %17)
  store %struct.wcove_tmu* %18, %struct.wcove_tmu** %6, align 8
  %19 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %20 = icmp ne %struct.wcove_tmu* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %85

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %28 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %27, i32 0, i32 2
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %28, align 8
  %29 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %30 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %33 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = call i32 @platform_get_irq(%struct.platform_device* %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %2, align 4
  br label %85

40:                                               ; preds = %24
  %41 = load %struct.intel_soc_pmic*, %struct.intel_soc_pmic** %4, align 8
  %42 = getelementptr inbounds %struct.intel_soc_pmic, %struct.intel_soc_pmic* %41, i32 0, i32 0
  %43 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %42, align 8
  store %struct.regmap_irq_chip_data* %43, %struct.regmap_irq_chip_data** %5, align 8
  %44 = load %struct.regmap_irq_chip_data*, %struct.regmap_irq_chip_data** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_err(%struct.TYPE_4__* %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %40
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @bxt_wcove_tmu_irq_handler, align 4
  %60 = load i32, i32* @IRQF_ONESHOT, align 4
  %61 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %62 = call i32 @devm_request_threaded_irq(%struct.TYPE_4__* %57, i32 %58, i32* null, i32 %59, i32 %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.wcove_tmu* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @dev_err(%struct.TYPE_4__* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %85

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %75 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %77 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BXTWC_MTMUIRQ_REG, align 4
  %80 = load i32, i32* @BXTWC_TMU_ALRM_MASK, align 4
  %81 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 0)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = load %struct.wcove_tmu*, %struct.wcove_tmu** %6, align 8
  %84 = call i32 @platform_set_drvdata(%struct.platform_device* %82, %struct.wcove_tmu* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %72, %65, %49, %38, %21
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.intel_soc_pmic* @dev_get_drvdata(i32) #1

declare dso_local %struct.wcove_tmu* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @regmap_irq_get_virq(%struct.regmap_irq_chip_data*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_4__*, i32, i32*, i32, i32, i8*, %struct.wcove_tmu*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wcove_tmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
