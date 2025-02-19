; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_read_ahb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_read_ahb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_qspi = type { i32, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_qspi*, %struct.spi_mem_op*)* @fsl_qspi_read_ahb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_qspi_read_ahb(%struct.fsl_qspi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.fsl_qspi*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  store %struct.fsl_qspi* %0, %struct.fsl_qspi** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %5 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %6 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %11 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %14 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %17 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %15, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %12, %22
  %24 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %25 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy_fromio(i32 %9, i64 %23, i32 %27)
  ret void
}

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
