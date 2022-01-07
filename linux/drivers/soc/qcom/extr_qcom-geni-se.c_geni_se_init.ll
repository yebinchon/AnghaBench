; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom-geni-se.c_geni_se_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geni_se = type { i64 }

@SE_GENI_RX_WATERMARK_REG = common dso_local global i64 0, align 8
@SE_GENI_RX_RFR_WATERMARK_REG = common dso_local global i64 0, align 8
@SE_GENI_M_IRQ_EN = common dso_local global i64 0, align 8
@M_COMMON_GENI_M_IRQ_EN = common dso_local global i32 0, align 4
@SE_GENI_S_IRQ_EN = common dso_local global i64 0, align 8
@S_COMMON_GENI_S_IRQ_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geni_se_init(%struct.geni_se* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.geni_se*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.geni_se* %0, %struct.geni_se** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %9 = call i32 @geni_se_irq_clear(%struct.geni_se* %8)
  %10 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %11 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @geni_se_io_init(i64 %12)
  %14 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %15 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @geni_se_io_set_mode(i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %20 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SE_GENI_RX_WATERMARK_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel_relaxed(i32 %18, i64 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %27 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SE_GENI_RX_RFR_WATERMARK_REG, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %33 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl_relaxed(i64 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @M_COMMON_GENI_M_IRQ_EN, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %43 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SE_GENI_M_IRQ_EN, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %49 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @readl_relaxed(i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @S_COMMON_GENI_S_IRQ_EN, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.geni_se*, %struct.geni_se** %4, align 8
  %59 = getelementptr inbounds %struct.geni_se, %struct.geni_se* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SE_GENI_S_IRQ_EN, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel_relaxed(i32 %57, i64 %62)
  ret void
}

declare dso_local i32 @geni_se_irq_clear(%struct.geni_se*) #1

declare dso_local i32 @geni_se_io_init(i64) #1

declare dso_local i32 @geni_se_io_set_mode(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
