; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_copy_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynqmp-gqspi.c_zynqmp_qspi_copy_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynqmp_qspi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynqmp_qspi*, i32, i64)* @zynqmp_qspi_copy_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynqmp_qspi_copy_read_data(%struct.zynqmp_qspi* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.zynqmp_qspi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.zynqmp_qspi* %0, %struct.zynqmp_qspi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %8 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @memcpy(i32 %9, i32* %5, i64 %10)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %14 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %16, %12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.zynqmp_qspi*, %struct.zynqmp_qspi** %4, align 8
  %21 = getelementptr inbounds %struct.zynqmp_qspi, %struct.zynqmp_qspi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
