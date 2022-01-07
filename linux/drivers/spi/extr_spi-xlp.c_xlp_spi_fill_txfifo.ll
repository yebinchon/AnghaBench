; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_fill_txfifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xlp.c_xlp_spi_fill_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlp_spi_priv = type { i32*, i64, i32 }

@XLP_SPI_FIFO_WCNT = common dso_local global i32 0, align 4
@XLP_SPI_TXFIFO_WCNT_MASK = common dso_local global i32 0, align 4
@XLP_SPI_TXFIFO_WCNT_SHIFT = common dso_local global i32 0, align 4
@XLP_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@XLP_SPI_TXDATA_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlp_spi_priv*)* @xlp_spi_fill_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlp_spi_fill_txfifo(%struct.xlp_spi_priv* %0) #0 {
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
  %14 = load i32, i32* @XLP_SPI_TXFIFO_WCNT_MASK, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @XLP_SPI_TXFIFO_WCNT_SHIFT, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %59, %1
  %21 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %22 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @XLP_SPI_FIFO_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i1 [ false, %20 ], [ %28, %25 ]
  br i1 %30, label %31, label %81

31:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  %32 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %33 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @min(i64 %34, i32 4)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %54, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %43 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = mul nsw i32 %49, 8
  %51 = shl i32 %48, %50
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %61 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %62 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @XLP_SPI_TXDATA_FIFO, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @xlp_spi_reg_write(%struct.xlp_spi_priv* %60, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %70 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.xlp_spi_priv*, %struct.xlp_spi_priv** %2, align 8
  %75 = getelementptr inbounds %struct.xlp_spi_priv, %struct.xlp_spi_priv* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = sext i32 %73 to i64
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32* %78, i32** %75, align 8
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %20

81:                                               ; preds = %29
  ret void
}

declare dso_local i32 @xlp_spi_reg_read(%struct.xlp_spi_priv*, i32, i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @xlp_spi_reg_write(%struct.xlp_spi_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
