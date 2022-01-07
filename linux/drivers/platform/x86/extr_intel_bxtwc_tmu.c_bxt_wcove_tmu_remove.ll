; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_bxtwc_tmu.c_bxt_wcove_tmu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel_bxtwc_tmu.c_bxt_wcove_tmu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wcove_tmu = type { i32 }

@BXTWC_MIRQLVL1 = common dso_local global i32 0, align 4
@BXTWC_MIRQLVL1_MTMU = common dso_local global i32 0, align 4
@BXTWC_MTMUIRQ_REG = common dso_local global i32 0, align 4
@BXTWC_TMU_ALRM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bxt_wcove_tmu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_wcove_tmu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wcove_tmu*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.wcove_tmu* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.wcove_tmu* %6, %struct.wcove_tmu** %3, align 8
  %7 = load %struct.wcove_tmu*, %struct.wcove_tmu** %3, align 8
  %8 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BXTWC_MIRQLVL1, align 4
  %11 = call i32 @regmap_read(i32 %9, i32 %10, i32* %4)
  %12 = load %struct.wcove_tmu*, %struct.wcove_tmu** %3, align 8
  %13 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BXTWC_MIRQLVL1, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @BXTWC_MIRQLVL1_MTMU, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @regmap_write(i32 %14, i32 %15, i32 %18)
  %20 = load %struct.wcove_tmu*, %struct.wcove_tmu** %3, align 8
  %21 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BXTWC_MTMUIRQ_REG, align 4
  %24 = call i32 @regmap_read(i32 %22, i32 %23, i32* %4)
  %25 = load %struct.wcove_tmu*, %struct.wcove_tmu** %3, align 8
  %26 = getelementptr inbounds %struct.wcove_tmu, %struct.wcove_tmu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BXTWC_MTMUIRQ_REG, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @BXTWC_TMU_ALRM_MASK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @regmap_write(i32 %27, i32 %28, i32 %31)
  ret i32 0
}

declare dso_local %struct.wcove_tmu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
