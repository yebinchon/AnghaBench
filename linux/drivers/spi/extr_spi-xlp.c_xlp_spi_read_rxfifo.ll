; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_read_rxfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_read_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_spi_priv = type { i32, i32*, i32 }

@XLP_SPI_FIFO_WCNT = common dso_local global i32 0, align 4
@XLP_SPI_RXFIFO_WCNT_MASK = common dso_local global i32 0, align 4
@XLP_SPI_RXDATA_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_spi_priv*)* @xlp_spi_read_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_spi_read_rxfifo(%struct.xlp_spi_priv* %0) #0 {
  %2 = alloca %struct.xlp_spi_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xlp_spi_priv* %0, %struct.xlp_spi_priv** %2, align 8
  %8 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %9 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %10 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @XLP_SPI_FIFO_WCNT, align 4
  %13 = call i32 @xlp_spi_reg_read(%struct.xlp_spi_priv* %8, i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @XLP_SPI_RXFIFO_WCNT_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %53, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %17
  %21 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %22 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %23 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XLP_SPI_RXDATA_FIFO, align 4
  %26 = call i32 @xlp_spi_reg_read(%struct.xlp_spi_priv* %21, i32 %24, i32 %25)
  store i32 %26, i32* %3, align 4
  store i32 0, i32* %6, align 4
  %27 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %28 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @min(i32 %29, i32 4)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %38, 8
  %40 = ashr i32 %37, %39
  %41 = and i32 %40, 255
  %42 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %43 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %33

53:                                               ; preds = %33
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %56 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %61 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %61, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %4, align 4
  br label %17

67:                                               ; preds = %17
  ret void
}

declare dso_local i32 @xlp_spi_reg_read(%struct.xlp_spi_priv*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
