; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-lantiq-ssc.c_hw_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lantiq_ssc_spi = type { i32, i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i64, i64 }

@LTQ_SPI_CON = common dso_local global i32 0, align 4
@LTQ_SPI_CON_TXOFF = common dso_local global i32 0, align 4
@LTQ_SPI_CON_RXOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lantiq_ssc_spi*, %struct.spi_device*, %struct.spi_transfer*)* @hw_setup_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_setup_transfer(%struct.lantiq_ssc_spi* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca %struct.lantiq_ssc_spi*, align 8
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lantiq_ssc_spi* %0, %struct.lantiq_ssc_spi** %4, align 8
  store %struct.spi_device* %1, %struct.spi_device** %5, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %6, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %18 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %24 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21, %3
  %28 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %29 = call i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi* %28)
  %30 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @hw_setup_speed_hz(%struct.lantiq_ssc_spi* %30, i32 %31)
  %33 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @hw_setup_bits_per_word(%struct.lantiq_ssc_spi* %33, i32 %34)
  %36 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %37 = call i32 @hw_enter_active_mode(%struct.lantiq_ssc_spi* %36)
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %40 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %43 = getelementptr inbounds %struct.lantiq_ssc_spi, %struct.lantiq_ssc_spi* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %27, %21
  %45 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %46 = load i32, i32* @LTQ_SPI_CON, align 4
  %47 = call i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load i32, i32* @LTQ_SPI_CON_TXOFF, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @LTQ_SPI_CON_TXOFF, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %63 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @LTQ_SPI_CON_RXOFF, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %75

71:                                               ; preds = %61
  %72 = load i32, i32* @LTQ_SPI_CON_RXOFF, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.lantiq_ssc_spi*, %struct.lantiq_ssc_spi** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @LTQ_SPI_CON, align 4
  %79 = call i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi* %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @hw_enter_config_mode(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @hw_setup_speed_hz(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @hw_setup_bits_per_word(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @hw_enter_active_mode(%struct.lantiq_ssc_spi*) #1

declare dso_local i32 @lantiq_ssc_readl(%struct.lantiq_ssc_spi*, i32) #1

declare dso_local i32 @lantiq_ssc_writel(%struct.lantiq_ssc_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
