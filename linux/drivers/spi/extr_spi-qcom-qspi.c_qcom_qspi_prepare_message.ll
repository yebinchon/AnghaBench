; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_prepare_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_prepare_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32 }
%struct.spi_message = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.qcom_qspi = type { i32, i64 }

@MSTR_CONFIG = common dso_local global i64 0, align 8
@CHIP_SELECT_NUM = common dso_local global i32 0, align 4
@FB_CLK_EN = common dso_local global i32 0, align 4
@PIN_WPN = common dso_local global i32 0, align 4
@PIN_HOLDN = common dso_local global i32 0, align 4
@SBL_EN = common dso_local global i32 0, align 4
@FULL_CYCLE_MODE = common dso_local global i32 0, align 4
@SPI_MODE_MSK = common dso_local global i32 0, align 4
@TX_DATA_OE_DELAY_MSK = common dso_local global i32 0, align 4
@TX_DATA_DELAY_MSK = common dso_local global i32 0, align 4
@SPI_MODE_SHFT = common dso_local global i32 0, align 4
@TX_DATA_OE_DELAY_SHFT = common dso_local global i32 0, align 4
@TX_DATA_DELAY_SHFT = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.spi_message*)* @qcom_qspi_prepare_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_qspi_prepare_message(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %10 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %11 = call %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.qcom_qspi* %11, %struct.qcom_qspi** %6, align 8
  %12 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %17 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSTR_CONFIG, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @CHIP_SELECT_NUM, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %27 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @CHIP_SELECT_NUM, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i32, i32* @FB_CLK_EN, align 4
  %38 = load i32, i32* @PIN_WPN, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PIN_HOLDN, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SBL_EN, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FULL_CYCLE_MODE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @SPI_MODE_MSK, align 4
  %49 = load i32, i32* @TX_DATA_OE_DELAY_MSK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @TX_DATA_DELAY_MSK, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %57 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SPI_MODE_SHFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @TX_DATA_OE_DELAY_SHFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @TX_DATA_DELAY_SHFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @DMA_ENABLE, align 4
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %81 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MSTR_CONFIG, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %87 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %86, i32 0, i32 0
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  ret i32 0
}

declare dso_local %struct.qcom_qspi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
