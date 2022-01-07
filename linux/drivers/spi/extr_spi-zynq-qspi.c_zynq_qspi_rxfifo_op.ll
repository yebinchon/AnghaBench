; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_rxfifo_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_rxfifo_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i64, i64 }

@ZYNQ_QSPI_RXD_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_qspi*, i32)* @zynq_qspi_rxfifo_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_rxfifo_op(%struct.zynq_qspi* %0, i32 %1) #0 {
  %3 = alloca %struct.zynq_qspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zynq_qspi* %0, %struct.zynq_qspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %7 = load i32, i32* @ZYNQ_QSPI_RXD_OFFSET, align 4
  %8 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %10 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %15 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %5, i64 4
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @memcpy(i64 %16, i32* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %27 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, %25
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %13, %2
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %34 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, %32
  store i64 %36, i64* %34, align 8
  %37 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %38 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.zynq_qspi*, %struct.zynq_qspi** %3, align 8
  %43 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %30
  ret void
}

declare dso_local i32 @zynq_qspi_read(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
