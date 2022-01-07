; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.spi_controller*, %struct.TYPE_2__*, %struct.pxa2xx_spi_controller* }
%struct.spi_controller = type { i32*, i8* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pxa2xx_spi_controller = type { i32, i32, i32 }

@DMA_SLAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_spi_dma_setup(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.pxa2xx_spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %8 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %9 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %8, i32 0, i32 2
  %10 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %9, align 8
  store %struct.pxa2xx_spi_controller* %10, %struct.pxa2xx_spi_controller** %4, align 8
  %11 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %12 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %16 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %15, i32 0, i32 0
  %17 = load %struct.spi_controller*, %struct.spi_controller** %16, align 8
  store %struct.spi_controller* %17, %struct.spi_controller** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @dma_cap_zero(i32 %18)
  %20 = load i32, i32* @DMA_SLAVE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dma_cap_set(i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %25 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %28 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i8* @dma_request_slave_channel_compat(i32 %23, i32 %26, i32 %29, %struct.device* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 8
  %35 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %36 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %68

42:                                               ; preds = %1
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %45 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pxa2xx_spi_controller*, %struct.pxa2xx_spi_controller** %4, align 8
  %48 = getelementptr inbounds %struct.pxa2xx_spi_controller, %struct.pxa2xx_spi_controller* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.device*, %struct.device** %5, align 8
  %51 = call i8* @dma_request_slave_channel_compat(i32 %43, i32 %46, i32 %49, %struct.device* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %53 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %55 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %42
  %59 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %60 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @dma_release_channel(i32* %61)
  %63 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %64 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %58, %39
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @dma_cap_zero(i32) #1

declare dso_local i32 @dma_cap_set(i32, i32) #1

declare dso_local i8* @dma_request_slave_channel_compat(i32, i32, i32, %struct.device*, i8*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
