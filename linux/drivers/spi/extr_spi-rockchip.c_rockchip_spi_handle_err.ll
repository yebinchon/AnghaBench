; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_handle_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_handle_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { i32, i32 }
%struct.spi_message = type { i32 }
%struct.rockchip_spi = type { i32, i64 }

@ROCKCHIP_SPI_IMR = common dso_local global i64 0, align 8
@TXDMA = common dso_local global i32 0, align 4
@RXDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_master*, %struct.spi_message*)* @rockchip_spi_handle_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_spi_handle_err(%struct.spi_master* %0, %struct.spi_message* %1) #0 {
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca %struct.rockchip_spi*, align 8
  store %struct.spi_master* %0, %struct.spi_master** %3, align 8
  store %struct.spi_message* %1, %struct.spi_message** %4, align 8
  %6 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %7 = call %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master* %6)
  store %struct.rockchip_spi* %7, %struct.rockchip_spi** %5, align 8
  %8 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %9 = call i32 @spi_enable_chip(%struct.rockchip_spi* %8, i32 0)
  %10 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %11 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ROCKCHIP_SPI_IMR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 0, i64 %14)
  %16 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %17 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @TXDMA, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %24 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dmaengine_terminate_async(i32 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = load %struct.rockchip_spi*, %struct.rockchip_spi** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %28, i32 0, i32 0
  %30 = call i32 @atomic_read(i32* %29)
  %31 = load i32, i32* @RXDMA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dmaengine_terminate_async(i32 %37)
  br label %39

39:                                               ; preds = %34, %27
  ret void
}

declare dso_local %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_enable_chip(%struct.rockchip_spi*, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
