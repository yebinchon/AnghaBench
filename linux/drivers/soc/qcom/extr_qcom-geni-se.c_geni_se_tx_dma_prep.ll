; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_tx_dma_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_tx_dma_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i64, %struct.geni_wrapper* }
%struct.geni_wrapper = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GENI_SE_DMA_DONE_EN = common dso_local global i64 0, align 8
@GENI_SE_DMA_EOT_EN = common dso_local global i64 0, align 8
@GENI_SE_DMA_AHB_ERR_EN = common dso_local global i64 0, align 8
@SE_DMA_TX_IRQ_EN_SET = common dso_local global i64 0, align 8
@SE_DMA_TX_PTR_L = common dso_local global i64 0, align 8
@SE_DMA_TX_PTR_H = common dso_local global i64 0, align 8
@GENI_SE_DMA_EOT_BUF = common dso_local global i64 0, align 8
@SE_DMA_TX_ATTR = common dso_local global i64 0, align 8
@SE_DMA_TX_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geni_se_tx_dma_prep(%struct.geni_se* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.geni_se*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.geni_wrapper*, align 8
  %11 = alloca i64, align 8
  store %struct.geni_se* %0, %struct.geni_se** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %13 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %12, i32 0, i32 1
  %14 = load %struct.geni_wrapper*, %struct.geni_wrapper** %13, align 8
  store %struct.geni_wrapper* %14, %struct.geni_wrapper** %10, align 8
  %15 = load %struct.geni_wrapper*, %struct.geni_wrapper** %10, align 8
  %16 = icmp ne %struct.geni_wrapper* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %86

20:                                               ; preds = %4
  %21 = load %struct.geni_wrapper*, %struct.geni_wrapper** %10, align 8
  %22 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = call i32 @dma_map_single(i32 %23, i8* %24, i64 %25, i32 %26)
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.geni_wrapper*, %struct.geni_wrapper** %10, align 8
  %30 = getelementptr inbounds %struct.geni_wrapper, %struct.geni_wrapper* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dma_mapping_error(i32 %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %86

39:                                               ; preds = %20
  %40 = load i64, i64* @GENI_SE_DMA_DONE_EN, align 8
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* @GENI_SE_DMA_EOT_EN, align 8
  %42 = load i64, i64* %11, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* @GENI_SE_DMA_AHB_ERR_EN, align 8
  %45 = load i64, i64* %11, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %49 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SE_DMA_TX_IRQ_EN_SET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel_relaxed(i64 %47, i64 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @lower_32_bits(i32 %55)
  %57 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %58 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SE_DMA_TX_PTR_L, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i64 %56, i64 %61)
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @upper_32_bits(i32 %64)
  %66 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %67 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SE_DMA_TX_PTR_H, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel_relaxed(i64 %65, i64 %70)
  %72 = load i64, i64* @GENI_SE_DMA_EOT_BUF, align 8
  %73 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %74 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SE_DMA_TX_ATTR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel_relaxed(i64 %72, i64 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.geni_se*, %struct.geni_se** %6, align 8
  %81 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SE_DMA_TX_LEN, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel_relaxed(i64 %79, i64 %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %39, %36, %17
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @dma_map_single(i32, i8*, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

declare dso_local i64 @lower_32_bits(i32) #1

declare dso_local i64 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
