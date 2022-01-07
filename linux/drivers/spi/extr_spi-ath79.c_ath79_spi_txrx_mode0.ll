; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_txrx_mode0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_txrx_mode0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ath79_spi = type { i32 }

@AR71XX_SPI_IOC_DO = common dso_local global i32 0, align 4
@AR71XX_SPI_REG_IOC = common dso_local global i32 0, align 4
@AR71XX_SPI_IOC_CLK = common dso_local global i32 0, align 4
@AR71XX_SPI_REG_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32, i32, i32)* @ath79_spi_txrx_mode0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath79_spi_txrx_mode0(%struct.spi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ath79_spi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %15 = call %struct.ath79_spi* @ath79_spidev_to_sp(%struct.spi_device* %14)
  store %struct.ath79_spi* %15, %struct.ath79_spi** %11, align 8
  %16 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %17 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 32, %19
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %67, %5
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @likely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %70

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, -2147483648
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @AR71XX_SPI_IOC_DO, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %13, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @AR71XX_SPI_IOC_DO, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %42 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @ath79_spi_wr(%struct.ath79_spi* %41, i32 %42, i32 %43)
  %45 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ath79_spi_delay(%struct.ath79_spi* %45, i32 %46)
  %48 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %49 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @AR71XX_SPI_IOC_CLK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ath79_spi_wr(%struct.ath79_spi* %48, i32 %49, i32 %52)
  %54 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ath79_spi_delay(%struct.ath79_spi* %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %40
  %60 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %61 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @ath79_spi_wr(%struct.ath79_spi* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %40
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %9, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load %struct.ath79_spi*, %struct.ath79_spi** %11, align 8
  %72 = load i32, i32* @AR71XX_SPI_REG_RDS, align 4
  %73 = call i32 @ath79_spi_rr(%struct.ath79_spi* %71, i32 %72)
  ret i32 %73
}

declare dso_local %struct.ath79_spi* @ath79_spidev_to_sp(%struct.spi_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ath79_spi_wr(%struct.ath79_spi*, i32, i32) #1

declare dso_local i32 @ath79_spi_delay(%struct.ath79_spi*, i32) #1

declare dso_local i32 @ath79_spi_rr(%struct.ath79_spi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
