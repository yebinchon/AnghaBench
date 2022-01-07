; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_dma_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_dma_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.bcm2835_spi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm2835_spi_dma_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_spi_dma_rx_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  %4 = alloca %struct.bcm2835_spi*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.spi_controller*
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %7)
  store %struct.bcm2835_spi* %8, %struct.bcm2835_spi** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %10 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dmaengine_terminate_async(i32 %11)
  %13 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %14 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %16 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %18 = call i32 @bcm2835_spi_undo_prologue(%struct.bcm2835_spi* %17)
  %19 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %20 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %19)
  %21 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 0
  %23 = call i32 @complete(i32* %22)
  ret void
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

declare dso_local i32 @bcm2835_spi_undo_prologue(%struct.bcm2835_spi*) #1

declare dso_local i32 @bcm2835_spi_reset_hw(%struct.spi_controller*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
