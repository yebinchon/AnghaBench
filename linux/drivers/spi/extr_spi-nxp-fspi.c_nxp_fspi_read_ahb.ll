; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_read_ahb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-nxp-fspi.c_nxp_fspi_read_ahb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_fspi = type { i64 }
%struct.spi_mem_op = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nxp_fspi*, %struct.spi_mem_op*)* @nxp_fspi_read_ahb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxp_fspi_read_ahb(%struct.nxp_fspi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca %struct.nxp_fspi*, align 8
  %4 = alloca %struct.spi_mem_op*, align 8
  %5 = alloca i32, align 4
  store %struct.nxp_fspi* %0, %struct.nxp_fspi** %3, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %4, align 8
  %6 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %7 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %11 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.nxp_fspi*, %struct.nxp_fspi** %3, align 8
  %16 = getelementptr inbounds %struct.nxp_fspi, %struct.nxp_fspi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.spi_mem_op*, %struct.spi_mem_op** %4, align 8
  %19 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @memcpy_fromio(i32 %14, i64 %22, i32 %23)
  ret void
}

declare dso_local i32 @memcpy_fromio(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
