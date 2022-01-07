; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_atmel-quadspi.c_atmel_qspi_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.atmel_qspi = type { i32, i32, i64, i32 }

@QSPI_IFR = common dso_local global i64 0, align 8
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@QSPI_CR_LASTXFER = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@QSPI_SR = common dso_local global i64 0, align 8
@QSPI_SR_CMD_COMPLETED = common dso_local global i32 0, align 4
@QSPI_IER = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@QSPI_IDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @atmel_qspi_exec_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_qspi_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.atmel_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %10 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %11 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.atmel_qspi* @spi_controller_get_devdata(i32 %14)
  store %struct.atmel_qspi* %15, %struct.atmel_qspi** %6, align 8
  %16 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %17 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %18 = call i32 @atmel_qspi_set_cfg(%struct.atmel_qspi* %16, %struct.spi_mem_op* %17, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %129

23:                                               ; preds = %2
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %82

29:                                               ; preds = %23
  %30 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QSPI_IFR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl_relaxed(i64 %34)
  %36 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %37 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %29
  %43 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %44 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %49 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %54 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @_memcpy_fromio(i32 %47, i32 %52, i32 %56)
  br label %74

58:                                               ; preds = %29
  %59 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %60 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %65 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %70 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @_memcpy_toio(i32 %63, i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %58, %42
  %75 = load i32, i32* @QSPI_CR_LASTXFER, align 4
  %76 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %77 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @QSPI_CR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %74, %23
  %83 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %84 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @QSPI_SR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @readl_relaxed(i64 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %3, align 4
  br label %129

96:                                               ; preds = %82
  %97 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %98 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %97, i32 0, i32 3
  %99 = call i32 @reinit_completion(i32* %98)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %102 = and i32 %100, %101
  %103 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %104 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %106 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %107 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @QSPI_IER, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel_relaxed(i32 %105, i64 %110)
  %112 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %113 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %112, i32 0, i32 3
  %114 = call i32 @msecs_to_jiffies(i32 1000)
  %115 = call i32 @wait_for_completion_timeout(i32* %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %96
  %118 = load i32, i32* @ETIMEDOUT, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %117, %96
  %121 = load i32, i32* @QSPI_SR_CMD_COMPLETED, align 4
  %122 = load %struct.atmel_qspi*, %struct.atmel_qspi** %6, align 8
  %123 = getelementptr inbounds %struct.atmel_qspi, %struct.atmel_qspi* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @QSPI_IDR, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @writel_relaxed(i32 %121, i64 %126)
  %128 = load i32, i32* %9, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %94, %21
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.atmel_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @atmel_qspi_set_cfg(%struct.atmel_qspi*, %struct.spi_mem_op*, i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @_memcpy_fromio(i32, i32, i32) #1

declare dso_local i32 @_memcpy_toio(i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
