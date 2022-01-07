; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_prepare_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_prepare_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_spi = type { i32, i32, i32, i64, i64, i32 }
%struct.spi_transfer = type { i32, i32, i64 }

@INT_RF_FULL = common dso_local global i32 0, align 4
@ROCKCHIP_SPI_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_spi*, %struct.spi_transfer*)* @rockchip_spi_prepare_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_spi_prepare_irq(%struct.rockchip_spi* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.rockchip_spi*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  store %struct.rockchip_spi* %0, %struct.rockchip_spi** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %5 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %9 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %8, i32 0, i32 4
  store i64 %7, i64* %9, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %14 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %16 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %24 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %22, %25
  br label %28

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %27, %19
  %29 = phi i32 [ %26, %19 ], [ 0, %27 ]
  %30 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %31 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %36 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %34, %37
  %39 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %40 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @INT_RF_FULL, align 4
  %42 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %43 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ROCKCHIP_SPI_IMR, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %49 = call i32 @spi_enable_chip(%struct.rockchip_spi* %48, i32 1)
  %50 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %51 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %28
  %55 = load %struct.rockchip_spi*, %struct.rockchip_spi** %3, align 8
  %56 = call i32 @rockchip_spi_pio_writer(%struct.rockchip_spi* %55)
  br label %57

57:                                               ; preds = %54, %28
  ret i32 1
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spi_enable_chip(%struct.rockchip_spi*, i32) #1

declare dso_local i32 @rockchip_spi_pio_writer(%struct.rockchip_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
