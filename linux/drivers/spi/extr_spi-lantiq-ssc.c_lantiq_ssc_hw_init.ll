; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_lantiq_ssc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, %struct.lantiq_ssc_hwcfg* }
%struct.lantiq_ssc_hwcfg = type { i32, i32 }

@LTQ_SPI_CLC_RMC_S = common dso_local global i32 0, align 4
@LTQ_SPI_CLC = common dso_local global i32 0, align 4
@LTQ_SPI_WHBSTATE_CLR_ERRORS = common dso_local global i32 0, align 4
@LTQ_SPI_WHBSTATE = common dso_local global i32 0, align 4
@LTQ_SPI_CON_RUEN = common dso_local global i32 0, align 4
@LTQ_SPI_CON_AEN = common dso_local global i32 0, align 4
@LTQ_SPI_CON_TEN = common dso_local global i32 0, align 4
@LTQ_SPI_CON_REN = common dso_local global i32 0, align 4
@LTQ_SPI_CON_TXOFF = common dso_local global i32 0, align 4
@LTQ_SPI_CON_RXOFF = common dso_local global i32 0, align 4
@LTQ_SPI_CON = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@LTQ_SPI_WHBSTATE_SETMS = common dso_local global i32 0, align 4
@LTQ_SPI_GPOCON = common dso_local global i32 0, align 4
@LTQ_SPI_FPGO = common dso_local global i32 0, align 4
@LTQ_SPI_IRNEN_E = common dso_local global i32 0, align 4
@LTQ_SPI_IRNEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lantiq_ssc_spi*)* @lantiq_ssc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lantiq_ssc_hw_init(%struct.lantiq_ssc_spi* %0) #0 {
  %2 = alloca %struct.lantiq_ssc_spi*, align 8
  %3 = alloca %struct.lantiq_ssc_hwcfg*, align 8
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %2, align 8
  %4 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %5 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %4, i32 0, i32 1
  %6 = load %struct.lantiq_ssc_hwcfg*, %struct.lantiq_ssc_hwcfg** %5, align 8
  store %struct.lantiq_ssc_hwcfg* %6, %struct.lantiq_ssc_hwcfg** %3, align 8
  %7 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %8 = load i32, i32* @LTQ_SPI_CLC_RMC_S, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @LTQ_SPI_CLC, align 4
  %11 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %7, i32 %9, i32 %10)
  %12 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %13 = call i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi* %12)
  %14 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %15 = load i32, i32* @LTQ_SPI_WHBSTATE_CLR_ERRORS, align 4
  %16 = load i32, i32* @LTQ_SPI_WHBSTATE, align 4
  %17 = call i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi* %14, i32 0, i32 %15, i32 %16)
  %18 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %19 = load i32, i32* @LTQ_SPI_CON_RUEN, align 4
  %20 = load i32, i32* @LTQ_SPI_CON_AEN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @LTQ_SPI_CON_TEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @LTQ_SPI_CON_REN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LTQ_SPI_CON_TXOFF, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @LTQ_SPI_CON_RXOFF, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @LTQ_SPI_CON, align 4
  %31 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %18, i32 %29, i32 %30)
  %32 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %33 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %34 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hw_setup_bits_per_word(%struct.lantiq_ssc_spi* %32, i32 %35)
  %37 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %38 = load i32, i32* @SPI_MODE_0, align 4
  %39 = call i32 @hw_setup_clock_mode(%struct.lantiq_ssc_spi* %37, i32 %38)
  %40 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %41 = load i32, i32* @LTQ_SPI_WHBSTATE_SETMS, align 4
  %42 = load i32, i32* @LTQ_SPI_WHBSTATE_CLR_ERRORS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @LTQ_SPI_WHBSTATE, align 4
  %45 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %40, i32 %43, i32 %44)
  %46 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %47 = load i32, i32* @LTQ_SPI_GPOCON, align 4
  %48 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %46, i32 0, i32 %47)
  %49 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %50 = load i32, i32* @LTQ_SPI_FPGO, align 4
  %51 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %49, i32 65280, i32 %50)
  %52 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %53 = call i32 @rx_fifo_reset(%struct.lantiq_ssc_spi* %52)
  %54 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %55 = call i32 @tx_fifo_reset(%struct.lantiq_ssc_spi* %54)
  %56 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %2, align 8
  %57 = load %struct.lantiq_ssc_hwcfg*, %struct.lantiq_ssc_hwcfg** %3, align 8
  %58 = getelementptr inbounds %struct.lantiq_ssc_hwcfg, %struct.lantiq_ssc_hwcfg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lantiq_ssc_hwcfg*, %struct.lantiq_ssc_hwcfg** %3, align 8
  %61 = getelementptr inbounds %struct.lantiq_ssc_hwcfg, %struct.lantiq_ssc_hwcfg* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load i32, i32* @LTQ_SPI_IRNEN_E, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @LTQ_SPI_IRNEN, align 4
  %67 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %56, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi*, i32, i32) #1

declare dso_local i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @lantiq_ssc_maskl(%struct.lantiq_ssc_spi*, i32, i32, i32) #1

declare dso_local i32 @hw_setup_bits_per_word(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @hw_setup_clock_mode(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @rx_fifo_reset(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @tx_fifo_reset(%struct.lantiq_ssc_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
