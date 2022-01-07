; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i32 }

@ZYNQ_QSPI_ENABLE_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IDIS_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_ALL_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_LINEAR_CFG_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_STATUS_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_RXNEMTY_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_RXD_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_MSTREN_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_CPOL_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_CPHA_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_BDRATE_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_SSFORCE_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_MANSRTEN_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_MANSRT_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_FWIDTH_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_CONFIG_IFMODE_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_RX_THRESH_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_RX_THRESHOLD = common dso_local global i32 0, align 4
@ZYNQ_QSPI_TX_THRESH_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_TX_THRESHOLD = common dso_local global i32 0, align 4
@ZYNQ_QSPI_ENABLE_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zynq_qspi*)* @zynq_qspi_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zynq_qspi_init_hw(%struct.zynq_qspi* %0) #0 {
  %2 = alloca %struct.zynq_qspi*, align 8
  %3 = alloca i32, align 4
  store %struct.zynq_qspi* %0, %struct.zynq_qspi** %2, align 8
  %4 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %5 = load i32, i32* @ZYNQ_QSPI_ENABLE_OFFSET, align 4
  %6 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %4, i32 %5, i32 0)
  %7 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %8 = load i32, i32* @ZYNQ_QSPI_IDIS_OFFSET, align 4
  %9 = load i32, i32* @ZYNQ_QSPI_IXR_ALL_MASK, align 4
  %10 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %7, i32 %8, i32 %9)
  %11 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %12 = load i32, i32* @ZYNQ_QSPI_LINEAR_CFG_OFFSET, align 4
  %13 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %11, i32 %12, i32 0)
  br label %14

14:                                               ; preds = %21, %1
  %15 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %16 = load i32, i32* @ZYNQ_QSPI_STATUS_OFFSET, align 4
  %17 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %15, i32 %16)
  %18 = load i32, i32* @ZYNQ_QSPI_IXR_RXNEMTY_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %23 = load i32, i32* @ZYNQ_QSPI_RXD_OFFSET, align 4
  %24 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %22, i32 %23)
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %27 = load i32, i32* @ZYNQ_QSPI_STATUS_OFFSET, align 4
  %28 = load i32, i32* @ZYNQ_QSPI_IXR_ALL_MASK, align 4
  %29 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %26, i32 %27, i32 %28)
  %30 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %31 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %32 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @ZYNQ_QSPI_CONFIG_MSTREN_MASK, align 4
  %34 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPOL_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ZYNQ_QSPI_CONFIG_CPHA_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ZYNQ_QSPI_CONFIG_BDRATE_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ZYNQ_QSPI_CONFIG_SSFORCE_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ZYNQ_QSPI_CONFIG_MANSRTEN_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ZYNQ_QSPI_CONFIG_MANSRT_MASK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @ZYNQ_QSPI_CONFIG_MSTREN_MASK, align 4
  %50 = load i32, i32* @ZYNQ_QSPI_CONFIG_SSFORCE_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ZYNQ_QSPI_CONFIG_FWIDTH_MASK, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ZYNQ_QSPI_CONFIG_IFMODE_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %59 = load i32, i32* @ZYNQ_QSPI_CONFIG_OFFSET, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %58, i32 %59, i32 %60)
  %62 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %63 = load i32, i32* @ZYNQ_QSPI_RX_THRESH_OFFSET, align 4
  %64 = load i32, i32* @ZYNQ_QSPI_RX_THRESHOLD, align 4
  %65 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %62, i32 %63, i32 %64)
  %66 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %67 = load i32, i32* @ZYNQ_QSPI_TX_THRESH_OFFSET, align 4
  %68 = load i32, i32* @ZYNQ_QSPI_TX_THRESHOLD, align 4
  %69 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %66, i32 %67, i32 %68)
  %70 = load %struct.zynq_qspi*, %struct.zynq_qspi** %2, align 8
  %71 = load i32, i32* @ZYNQ_QSPI_ENABLE_OFFSET, align 4
  %72 = load i32, i32* @ZYNQ_QSPI_ENABLE_ENABLE_MASK, align 4
  %73 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @zynq_qspi_read(%struct.zynq_qspi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
