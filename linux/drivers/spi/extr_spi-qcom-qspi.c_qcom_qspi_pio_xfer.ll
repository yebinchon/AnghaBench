; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_pio_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_pio_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_qspi = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@QSPI_ALL_IRQS = common dso_local global i32 0, align 4
@MSTR_INT_STATUS = common dso_local global i64 0, align 8
@QSPI_WRITE = common dso_local global i64 0, align 8
@QSPI_ERR_IRQS = common dso_local global i32 0, align 4
@WR_FIFO_EMPTY = common dso_local global i32 0, align 4
@RESP_FIFO_RDY = common dso_local global i32 0, align 4
@MSTR_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_qspi*)* @qcom_qspi_pio_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_qspi_pio_xfer(%struct.qcom_qspi* %0) #0 {
  %2 = alloca %struct.qcom_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.qcom_qspi* %0, %struct.qcom_qspi** %2, align 8
  %4 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %5 = call i32 @qcom_qspi_pio_xfer_cfg(%struct.qcom_qspi* %4)
  %6 = load i32, i32* @QSPI_ALL_IRQS, align 4
  %7 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %8 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MSTR_INT_STATUS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %14 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @QSPI_WRITE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @QSPI_ERR_IRQS, align 4
  %21 = load i32, i32* @WR_FIFO_EMPTY, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @QSPI_ERR_IRQS, align 4
  %25 = load i32, i32* @RESP_FIFO_RDY, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %30 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MSTR_INT_EN, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %36 = call i32 @qcom_qspi_pio_xfer_ctrl(%struct.qcom_qspi* %35)
  ret void
}

declare dso_local i32 @qcom_qspi_pio_xfer_cfg(%struct.qcom_qspi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @qcom_qspi_pio_xfer_ctrl(%struct.qcom_qspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
