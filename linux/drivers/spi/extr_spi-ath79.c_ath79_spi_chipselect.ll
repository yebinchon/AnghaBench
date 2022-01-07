; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_chipselect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ath79.c_ath79_spi_chipselect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.ath79_spi = type { i32 }

@SPI_CS_HIGH = common dso_local global i32 0, align 4
@AR71XX_SPI_REG_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*, i32)* @ath79_spi_chipselect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath79_spi_chipselect(%struct.spi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath79_spi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.ath79_spi* @ath79_spidev_to_sp(%struct.spi_device* %8)
  store %struct.ath79_spi* %9, %struct.ath79_spi** %5, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPI_CS_HIGH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %16
  %24 = phi i32 [ %17, %16 ], [ %22, %18 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @AR71XX_SPI_IOC_CS(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %34 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %44

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %41 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %46 = load i32, i32* @AR71XX_SPI_REG_IOC, align 4
  %47 = load %struct.ath79_spi*, %struct.ath79_spi** %5, align 8
  %48 = getelementptr inbounds %struct.ath79_spi, %struct.ath79_spi* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ath79_spi_wr(%struct.ath79_spi* %45, i32 %46, i32 %49)
  ret void
}

declare dso_local %struct.ath79_spi* @ath79_spidev_to_sp(%struct.spi_device*) #1

declare dso_local i32 @AR71XX_SPI_IOC_CS(i32) #1

declare dso_local i32 @ath79_spi_wr(%struct.ath79_spi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
