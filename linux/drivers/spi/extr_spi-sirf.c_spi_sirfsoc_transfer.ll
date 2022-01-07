; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sirf.c_spi_sirfsoc_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32, i32 }
%struct.sirfsoc_spi = type { i32, i32, i32, i64, i64, i32, i32, i32, i32 }

@SIRF_REAL_SPI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.spi_transfer*)* @spi_sirfsoc_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_sirfsoc_transfer(%struct.spi_device* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.spi_transfer*, align 8
  %5 = alloca %struct.sirfsoc_spi*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %4, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sirfsoc_spi* @spi_master_get_devdata(i32 %8)
  store %struct.sirfsoc_spi* %9, %struct.sirfsoc_spi** %5, align 8
  %10 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %11 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %14 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %16 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %22, %25
  %27 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %28 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %31, i32 0, i32 6
  %33 = call i32 @reinit_completion(i32* %32)
  %34 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %35 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %34, i32 0, i32 5
  %36 = call i32 @reinit_completion(i32* %35)
  %37 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SIRF_REAL_SPI, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %44 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %49 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %50 = call i32 @spi_sirfsoc_cmd_transfer(%struct.spi_device* %48, %struct.spi_transfer* %49)
  br label %64

51:                                               ; preds = %42, %2
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %53 = call i64 @IS_DMA_VALID(%struct.spi_transfer* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %58 = call i32 @spi_sirfsoc_dma_transfer(%struct.spi_device* %56, %struct.spi_transfer* %57)
  br label %63

59:                                               ; preds = %51
  %60 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %61 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %62 = call i32 @spi_sirfsoc_pio_transfer(%struct.spi_device* %60, %struct.spi_transfer* %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %47
  %65 = load %struct.spi_transfer*, %struct.spi_transfer** %4, align 8
  %66 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.sirfsoc_spi*, %struct.sirfsoc_spi** %5, align 8
  %72 = getelementptr inbounds %struct.sirfsoc_spi, %struct.sirfsoc_spi* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = sub nsw i32 %67, %74
  ret i32 %75
}

declare dso_local %struct.sirfsoc_spi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @spi_sirfsoc_cmd_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i64 @IS_DMA_VALID(%struct.spi_transfer*) #1

declare dso_local i32 @spi_sirfsoc_dma_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @spi_sirfsoc_pio_transfer(%struct.spi_device*, %struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
