; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_rx_dma_unprep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_rx_dma_unprep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { %struct.geni_wrapper* }
%struct.geni_wrapper = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geni_se_rx_dma_unprep(%struct.geni_se* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.geni_se*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.geni_wrapper*, align 8
  store %struct.geni_se* %0, %struct.geni_se** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %9 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %8, i32 0, i32 0
  %10 = load %struct.geni_wrapper*, %struct.geni_wrapper** %9, align 8
  store %struct.geni_wrapper* %10, %struct.geni_wrapper** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.geni_wrapper*, %struct.geni_wrapper** %7, align 8
  %15 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dma_mapping_error(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load %struct.geni_wrapper*, %struct.geni_wrapper** %7, align 8
  %22 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32 %23, i32 %24, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %13, %3
  ret void
}

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
