; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_fill_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_fill_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_spi_priv = type { i32, i32, i64, i32 }

@SSI_FIFO_DEPTH = common dso_local global i32 0, align 4
@SSI_FC = common dso_local global i64 0, align 8
@SSI_FC_TXFTH_MASK = common dso_local global i32 0, align 4
@SSI_FC_RXFTH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_spi_priv*)* @uniphier_spi_fill_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_spi_fill_tx_fifo(%struct.uniphier_spi_priv* %0) #0 {
  %2 = alloca %struct.uniphier_spi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uniphier_spi_priv* %0, %struct.uniphier_spi_priv** %2, align 8
  %6 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %7 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %10 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bytes_per_word(i32 %11)
  %13 = call i32 @DIV_ROUND_UP(i32 %8, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SSI_FIFO_DEPTH, align 4
  %16 = call i32 @min(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %19 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %22 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  %25 = sub i32 %17, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %27 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SSI_FC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @SSI_FC_TXFTH_MASK, align 4
  %33 = load i32, i32* @SSI_FC_RXFTH_MASK, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @SSI_FC_TXFTH_MASK, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @FIELD_PREP(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @SSI_FC_RXFTH_MASK, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @FIELD_PREP(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %50 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SSI_FC, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  br label %55

55:                                               ; preds = %59, %1
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, -1
  store i32 %57, i32* %4, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %2, align 8
  %61 = call i32 @uniphier_spi_send(%struct.uniphier_spi_priv* %60)
  br label %55

62:                                               ; preds = %55
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @bytes_per_word(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @uniphier_spi_send(%struct.uniphier_spi_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
