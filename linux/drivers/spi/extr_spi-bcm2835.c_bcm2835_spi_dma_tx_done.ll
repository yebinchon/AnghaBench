; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_dma_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_dma_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.bcm2835_spi = type { i64, i32, i32, i32* }

@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm2835_spi_dma_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_spi_dma_tx_done(i8* %0) #0 {
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
  br label %9

9:                                                ; preds = %17, %1
  %10 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %11 = load i32, i32* @BCM2835_SPI_CS, align 4
  %12 = call i32 @bcm2835_rd(%struct.bcm2835_spi* %10, i32 %11)
  %13 = load i32, i32* @BCM2835_SPI_CS_DONE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %19 = load i32, i32* @BCM2835_SPI_CS, align 4
  %20 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %21 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %24 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %18, i32 %19, i32 %27)
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %31 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %30, i32 0, i32 1
  store i32 0, i32* %31, align 8
  %32 = call i32 (...) @smp_wmb()
  %33 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %34 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %33, i32 0, i32 2
  %35 = call i64 @cmpxchg(i32* %34, i32 1, i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %39 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dmaengine_terminate_async(i32 %40)
  br label %42

42:                                               ; preds = %37, %29
  %43 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %4, align 8
  %44 = call i32 @bcm2835_spi_undo_prologue(%struct.bcm2835_spi* %43)
  %45 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %46 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %45)
  %47 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %48 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %47, i32 0, i32 0
  %49 = call i32 @complete(i32* %48)
  ret void
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_rd(%struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

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
