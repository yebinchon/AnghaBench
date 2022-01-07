; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_transfer_one_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32 }
%struct.spi_device = type { i64 }
%struct.spi_transfer = type { i32 }
%struct.bcm2835_spi = type { i32, i32, i32, i64, i32*, i32, i64, i32 }

@BCM2835_SPI_DLEN = common dso_local global i32 0, align 4
@BCM2835_SPI_CS = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_TA = common dso_local global i32 0, align 4
@BCM2835_SPI_CS_DMAEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, i32)* @bcm2835_spi_transfer_one_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_transfer_one_dma(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.spi_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_spi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %6, align 8
  store %struct.spi_device* %1, %struct.spi_device** %7, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %14 = call %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller* %13)
  store %struct.bcm2835_spi* %14, %struct.bcm2835_spi** %10, align 8
  %15 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %16 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %21 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @bcm2835_spi_transfer_prologue(%struct.spi_controller* %19, %struct.spi_transfer* %20, %struct.bcm2835_spi* %21, i32 %22)
  %24 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %25 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %30 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %31 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %32 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %33 = call i32 @bcm2835_spi_prepare_sg(%struct.spi_controller* %29, %struct.spi_device* %30, %struct.spi_transfer* %31, %struct.bcm2835_spi* %32, i32 1)
  store i32 %33, i32* %12, align 4
  br label %41

34:                                               ; preds = %4
  %35 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %36 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dmaengine_submit(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @dma_submit_error(i32 %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %129

45:                                               ; preds = %41
  %46 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %47 = load i32, i32* @BCM2835_SPI_DLEN, align 4
  %48 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %49 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %46, i32 %47, i32 %50)
  %52 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %53 = load i32, i32* @BCM2835_SPI_CS, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @BCM2835_SPI_CS_TA, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @BCM2835_SPI_CS_DMAEN, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @bcm2835_wr(%struct.bcm2835_spi* %52, i32 %53, i32 %58)
  %60 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %61 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %60, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = call i32 (...) @smp_wmb()
  %63 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %64 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dma_async_issue_pending(i32 %65)
  %67 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %68 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %45
  %72 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %73 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %74 = load %struct.spi_transfer*, %struct.spi_transfer** %8, align 8
  %75 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %76 = call i32 @bcm2835_spi_prepare_sg(%struct.spi_controller* %72, %struct.spi_device* %73, %struct.spi_transfer* %74, %struct.bcm2835_spi* %75, i32 0)
  store i32 %76, i32* %12, align 4
  br label %89

77:                                               ; preds = %45
  %78 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %79 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %82 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dmaengine_submit(i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @dma_submit_error(i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %77, %71
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %94 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dmaengine_terminate_sync(i32 %95)
  %97 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %98 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  br label %129

99:                                               ; preds = %89
  %100 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %101 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @dma_async_issue_pending(i32 %102)
  %104 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %105 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %104, i32 0, i32 2
  store i32 1, i32* %105, align 8
  %106 = call i32 (...) @smp_mb()
  %107 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %108 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %128, label %111

111:                                              ; preds = %99
  %112 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %113 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %111
  %117 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %118 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %117, i32 0, i32 2
  %119 = call i64 @cmpxchg(i32* %118, i32 1, i32 0)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %116
  %122 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %123 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dmaengine_terminate_async(i32 %124)
  %126 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %127 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %126)
  br label %128

128:                                              ; preds = %121, %116, %111, %99
  store i32 1, i32* %5, align 4
  br label %135

129:                                              ; preds = %92, %44
  %130 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %131 = call i32 @bcm2835_spi_reset_hw(%struct.spi_controller* %130)
  %132 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %133 = call i32 @bcm2835_spi_undo_prologue(%struct.bcm2835_spi* %132)
  %134 = load i32, i32* %12, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %129, %128
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.bcm2835_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_spi_transfer_prologue(%struct.spi_controller*, %struct.spi_transfer*, %struct.bcm2835_spi*, i32) #1

declare dso_local i32 @bcm2835_spi_prepare_sg(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, %struct.bcm2835_spi*, i32) #1

declare dso_local i32 @dmaengine_submit(i32) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @bcm2835_wr(%struct.bcm2835_spi*, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dmaengine_terminate_sync(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

declare dso_local i32 @bcm2835_spi_reset_hw(%struct.spi_controller*) #1

declare dso_local i32 @bcm2835_spi_undo_prologue(%struct.bcm2835_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
