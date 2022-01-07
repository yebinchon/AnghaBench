; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_pio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_pio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_qspi = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@RD_FIFO_STATUS = common dso_local global i64 0, align 8
@FIFO_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Spurious IRQ %#x\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@WR_CNTS_MSK = common dso_local global i32 0, align 4
@WR_CNTS_SHFT = common dso_local global i32 0, align 4
@QSPI_BYTES_PER_WORD = common dso_local global i32 0, align 4
@RD_FIFO = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_qspi*)* @pio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_read(%struct.qcom_qspi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.qcom_qspi* %0, %struct.qcom_qspi** %3, align 8
  %12 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %13 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RD_FIFO_STATUS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @FIFO_RDY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %2, align 4
  br label %119

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @WR_CNTS_MSK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @WR_CNTS_SHFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %37 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @min(i32 %35, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @QSPI_BYTES_PER_WORD, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @QSPI_BYTES_PER_WORD, align 4
  %46 = urem i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %29
  %50 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %51 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @QSPI_BYTES_PER_WORD, align 4
  %56 = mul i32 %54, %55
  %57 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %58 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub i32 %60, %56
  store i32 %61, i32* %59, align 8
  %62 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %63 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RD_FIFO, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @ioread32_rep(i64 %66, i32* %67, i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %75 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32* %73, i32** %76, align 8
  br label %77

77:                                               ; preds = %49, %29
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %117

80:                                               ; preds = %77
  %81 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %82 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  store i32* %84, i32** %10, align 8
  %85 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %86 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @RD_FIFO, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %93 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sub i32 %95, %91
  store i32 %96, i32* %94, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %109, %80
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @BITS_PER_BYTE, align 4
  %105 = mul nsw i32 %103, %104
  %106 = ashr i32 %102, %105
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %10, align 8
  store i32 %106, i32* %107, align 4
  br label %109

109:                                              ; preds = %101
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %97

112:                                              ; preds = %97
  %113 = load i32*, i32** %10, align 8
  %114 = load %struct.qcom_qspi*, %struct.qcom_qspi** %3, align 8
  %115 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i32* %113, i32** %116, align 8
  br label %117

117:                                              ; preds = %112, %77
  %118 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ioread32_rep(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
