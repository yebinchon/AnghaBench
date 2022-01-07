; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_spi = type { i32, i32, i32*, i64 }

@SYNQUACER_HSSPI_REG_DMSTATUS = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_DMSTATUS_TX_DATA_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMSTATUS_TX_DATA_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_FIFO_DEPTH = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_REG_TX_FIFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_spi*)* @write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_fifo(%struct.synquacer_spi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.synquacer_spi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.synquacer_spi* %0, %struct.synquacer_spi** %3, align 8
  %8 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %9 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SYNQUACER_HSSPI_REG_DMSTATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SYNQUACER_HSSPI_DMSTATUS_TX_DATA_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @SYNQUACER_HSSPI_DMSTATUS_TX_DATA_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i64, i64* @SYNQUACER_HSSPI_FIFO_DEPTH, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = sub nsw i64 %19, %21
  %23 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %24 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @min(i64 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %28 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %84 [
    i32 8, label %30
    i32 16, label %48
    i32 24, label %66
    i32 32, label %66
  ]

30:                                               ; preds = %1
  %31 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %32 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %5, align 8
  %34 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %35 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SYNQUACER_HSSPI_REG_TX_FIFO, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @iowrite8_rep(i64 %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %47 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  br label %87

48:                                               ; preds = %1
  %49 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %50 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %6, align 8
  %52 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %53 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SYNQUACER_HSSPI_REG_TX_FIFO, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @iowrite16_rep(i64 %56, i32* %57, i32 %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %65 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %64, i32 0, i32 2
  store i32* %63, i32** %65, align 8
  br label %87

66:                                               ; preds = %1, %1
  %67 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %68 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %7, align 8
  %70 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %71 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SYNQUACER_HSSPI_REG_TX_FIFO, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @iowrite32_rep(i64 %74, i32* %75, i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %83 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %82, i32 0, i32 2
  store i32* %81, i32** %83, align 8
  br label %87

84:                                               ; preds = %1
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %66, %48, %30
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %90 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @iowrite8_rep(i64, i32*, i32) #1

declare dso_local i32 @iowrite16_rep(i64, i32*, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
