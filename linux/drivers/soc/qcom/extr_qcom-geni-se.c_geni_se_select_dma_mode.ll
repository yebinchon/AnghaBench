; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i64 }

@SE_GENI_DMA_MODE_EN = common dso_local global i64 0, align 8
@GENI_DMA_MODE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_se*)* @geni_se_select_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_se_select_dma_mode(%struct.geni_se* %0) #0 {
  %2 = alloca %struct.geni_se*, align 8
  %3 = alloca i32, align 4
  store %struct.geni_se* %0, %struct.geni_se** %2, align 8
  %4 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %5 = call i32 @geni_se_irq_clear(%struct.geni_se* %4)
  %6 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %7 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SE_GENI_DMA_MODE_EN, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl_relaxed(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @GENI_DMA_MODE_EN, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %17 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SE_GENI_DMA_MODE_EN, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel_relaxed(i32 %15, i64 %20)
  ret void
}

declare dso_local i32 @geni_se_irq_clear(%struct.geni_se*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
