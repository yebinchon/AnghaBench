; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-synquacer.c_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synquacer_spi = type { i32, i32, i32*, i64 }

@SYNQUACER_HSSPI_REG_DMSTATUS = common dso_local global i64 0, align 8
@SYNQUACER_HSSPI_DMSTATUS_RX_DATA_SHIFT = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_DMSTATUS_RX_DATA_MASK = common dso_local global i32 0, align 4
@SYNQUACER_HSSPI_REG_RX_FIFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.synquacer_spi*)* @read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_fifo(%struct.synquacer_spi* %0) #0 {
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
  %15 = load i32, i32* @SYNQUACER_HSSPI_DMSTATUS_RX_DATA_SHIFT, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @SYNQUACER_HSSPI_DMSTATUS_RX_DATA_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %21 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @min(i32 %19, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %25 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %81 [
    i32 8, label %27
    i32 16, label %45
    i32 24, label %63
    i32 32, label %63
  ]

27:                                               ; preds = %1
  %28 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %29 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  %31 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %32 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SYNQUACER_HSSPI_REG_RX_FIFO, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ioread8_rep(i64 %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %44 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %84

45:                                               ; preds = %1
  %46 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %47 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %6, align 8
  %49 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %50 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SYNQUACER_HSSPI_REG_RX_FIFO, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @ioread16_rep(i64 %53, i32* %54, i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %62 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %61, i32 0, i32 2
  store i32* %60, i32** %62, align 8
  br label %84

63:                                               ; preds = %1, %1
  %64 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %65 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %7, align 8
  %67 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %68 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SYNQUACER_HSSPI_REG_RX_FIFO, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @ioread32_rep(i64 %71, i32* %72, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %80 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %79, i32 0, i32 2
  store i32* %78, i32** %80, align 8
  br label %84

81:                                               ; preds = %1
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %90

84:                                               ; preds = %63, %45, %27
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.synquacer_spi*, %struct.synquacer_spi** %3, align 8
  %87 = getelementptr inbounds %struct.synquacer_spi, %struct.synquacer_spi* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ioread8_rep(i64, i32*, i32) #1

declare dso_local i32 @ioread16_rep(i64, i32*, i32) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
