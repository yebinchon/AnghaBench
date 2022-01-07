; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_pio_xfer_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_pio_xfer_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_qspi = type { i64, %struct.qspi_xfer }
%struct.qspi_xfer = type { i32, i64, i32 }

@PIO_XFER_CFG = common dso_local global i64 0, align 8
@TRANSFER_DIRECTION = common dso_local global i32 0, align 4
@TRANSFER_FRAGMENT = common dso_local global i32 0, align 4
@MULTI_IO_MODE_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_qspi*)* @qcom_qspi_pio_xfer_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_qspi_pio_xfer_cfg(%struct.qcom_qspi* %0) #0 {
  %2 = alloca %struct.qcom_qspi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qspi_xfer*, align 8
  store %struct.qcom_qspi* %0, %struct.qcom_qspi** %2, align 8
  %5 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %6 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %5, i32 0, i32 1
  store %struct.qspi_xfer* %6, %struct.qspi_xfer** %4, align 8
  %7 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %8 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PIO_XFER_CFG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @TRANSFER_DIRECTION, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.qspi_xfer*, %struct.qspi_xfer** %4, align 8
  %18 = getelementptr inbounds %struct.qspi_xfer, %struct.qspi_xfer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.qspi_xfer*, %struct.qspi_xfer** %4, align 8
  %23 = getelementptr inbounds %struct.qspi_xfer, %struct.qspi_xfer* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i32, i32* @TRANSFER_FRAGMENT, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @TRANSFER_FRAGMENT, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* @MULTI_IO_MODE_MSK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %41 = load %struct.qspi_xfer*, %struct.qspi_xfer** %4, align 8
  %42 = getelementptr inbounds %struct.qspi_xfer, %struct.qspi_xfer* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @qspi_buswidth_to_iomode(%struct.qcom_qspi* %40, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.qcom_qspi*, %struct.qcom_qspi** %2, align 8
  %49 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PIO_XFER_CFG, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @qspi_buswidth_to_iomode(%struct.qcom_qspi*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
