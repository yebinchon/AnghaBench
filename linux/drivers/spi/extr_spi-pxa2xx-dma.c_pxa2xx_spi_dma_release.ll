; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.spi_controller* }
%struct.spi_controller = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pxa2xx_spi_dma_release(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 0
  %6 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dmaengine_terminate_sync(i32* %14)
  %16 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %17 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dma_release_channel(i32* %18)
  %20 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %21 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %24 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %29 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @dmaengine_terminate_sync(i32* %30)
  %32 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %33 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dma_release_channel(i32* %34)
  %36 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @dmaengine_terminate_sync(i32*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
