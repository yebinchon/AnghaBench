; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_adjust_op_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_adjust_op_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.fsl_qspi = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@SPI_MEM_DATA_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_mem*, %struct.spi_mem_op*)* @fsl_qspi_adjust_op_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_adjust_op_size(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.spi_mem*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca %struct.fsl_qspi*, align 8
  store %struct.spi_mem* %0, %struct.spi_mem** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %6 = load %struct.spi_mem*, %struct.spi_mem** %3, align 8
  %7 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.fsl_qspi* @spi_controller_get_devdata(i32 %10)
  store %struct.fsl_qspi* %11, %struct.fsl_qspi** %5, align 8
  %12 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %13 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SPI_MEM_DATA_OUT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %20 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %24 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %31 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %36 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %18
  br label %85

39:                                               ; preds = %2
  %40 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %41 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %45 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %43, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %52 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %57 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  br label %84

59:                                               ; preds = %39
  %60 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %61 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fsl_qspi*, %struct.fsl_qspi** %5, align 8
  %65 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sub nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = icmp sgt i64 %63, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %59
  %73 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %74 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @ALIGN_DOWN(i32 %77, i32 8)
  %79 = sext i32 %78 to i64
  %80 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %81 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i64 %79, i64* %82, align 8
  br label %83

83:                                               ; preds = %72, %59
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %38
  ret i32 0
}

declare dso_local %struct.fsl_qspi* @spi_controller_get_devdata(i32) #1

declare dso_local i32 @ALIGN_DOWN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
