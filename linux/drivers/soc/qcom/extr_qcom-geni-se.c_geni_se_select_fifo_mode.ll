; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_fifo_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_select_fifo_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i64 }

@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@GENI_SE_UART = common dso_local global i64 0, align 8
@M_CMD_DONE_EN = common dso_local global i64 0, align 8
@M_TX_FIFO_WATERMARK_EN = common dso_local global i64 0, align 8
@M_RX_FIFO_WATERMARK_EN = common dso_local global i64 0, align 8
@M_RX_FIFO_LAST_EN = common dso_local global i64 0, align 8
@SE_GENI_S_IRQ_EN = common dso_local global i64 0, align 8
@S_CMD_DONE_EN = common dso_local global i64 0, align 8
@SE_GENI_DMA_MODE_EN = common dso_local global i64 0, align 8
@GENI_DMA_MODE_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.geni_se*)* @geni_se_select_fifo_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geni_se_select_fifo_mode(%struct.geni_se* %0) #0 {
  %2 = alloca %struct.geni_se*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.geni_se* %0, %struct.geni_se** %2, align 8
  %5 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %6 = call i64 @geni_se_read_proto(%struct.geni_se* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %8 = call i32 @geni_se_irq_clear(%struct.geni_se* %7)
  %9 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %10 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl_relaxed(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @GENI_SE_UART, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i64, i64* @M_CMD_DONE_EN, align 8
  %20 = load i64, i64* @M_TX_FIFO_WATERMARK_EN, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* %4, align 8
  %23 = or i64 %22, %21
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* @M_RX_FIFO_WATERMARK_EN, align 8
  %25 = load i64, i64* @M_RX_FIFO_LAST_EN, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* %4, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %18, %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %32 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i64 %30, i64 %35)
  %37 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %38 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i64 @readl_relaxed(i64 %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @GENI_SE_UART, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load i64, i64* @S_CMD_DONE_EN, align 8
  %48 = load i64, i64* %4, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %4, align 8
  br label %50

50:                                               ; preds = %46, %29
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %53 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel_relaxed(i64 %51, i64 %56)
  %58 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %59 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SE_GENI_DMA_MODE_EN, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i64 @readl_relaxed(i64 %62)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* @GENI_DMA_MODE_EN, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %4, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.geni_se*, %struct.geni_se** %2, align 8
  %70 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SE_GENI_DMA_MODE_EN, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel_relaxed(i64 %68, i64 %73)
  ret void
}

declare dso_local i64 @geni_se_read_proto(%struct.geni_se*) #1

declare dso_local i32 @geni_se_irq_clear(%struct.geni_se*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
