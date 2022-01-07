; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_transfer_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_transfer_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64 }
%struct.at91_usart_spi = type { i32, i32*, i64, i32, i64, %struct.spi_transfer* }

@.str = private unnamed_addr constant [22 x i8] c"DMA transfer timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Overrun!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*)* @at91_usart_spi_transfer_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_spi_transfer_one(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.spi_transfer*, align 8
  %8 = alloca %struct.at91_usart_spi*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %5, align 8
  store %struct.spi_device* %1, %struct.spi_device** %6, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %7, align 8
  %11 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %12 = call %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller* %11)
  store %struct.at91_usart_spi* %12, %struct.at91_usart_spi** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %15 = call i32 @at91_usart_spi_set_xfer_speed(%struct.at91_usart_spi* %13, %struct.spi_transfer* %14)
  %16 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %17 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %19 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %20 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %19, i32 0, i32 5
  store %struct.spi_transfer* %18, %struct.spi_transfer** %20, align 8
  %21 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %25 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %30 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %29, i32 0, i32 4
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %90, %67, %3
  %32 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %33 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %38 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36, %31
  %42 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %43 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ false, %36 ], [ %46, %41 ]
  br i1 %48, label %49, label %92

49:                                               ; preds = %47
  %50 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %51 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %50, i32 0, i32 3
  %52 = call i32 @reinit_completion(i32* %51)
  %53 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %54 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %56 = call i64 @at91_usart_spi_can_dma(%struct.spi_controller* %53, %struct.spi_device* %54, %struct.spi_transfer* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %63 = load %struct.spi_transfer*, %struct.spi_transfer** %7, align 8
  %64 = call i32 @at91_usart_spi_dma_transfer(%struct.spi_controller* %62, %struct.spi_transfer* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %31

68:                                               ; preds = %61
  %69 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %70 = call i64 @at91_usart_spi_dma_timeout(%struct.at91_usart_spi* %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %78 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %105

82:                                               ; preds = %68
  %83 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %84 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  br label %90

85:                                               ; preds = %58, %49
  %86 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %87 = call i32 @at91_usart_spi_read_status(%struct.at91_usart_spi* %86)
  %88 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %89 = call i32 @at91_usart_spi_tx(%struct.at91_usart_spi* %88)
  br label %90

90:                                               ; preds = %85, %82
  %91 = call i32 (...) @cpu_relax()
  br label %31

92:                                               ; preds = %47
  %93 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %94 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %8, align 8
  %99 = getelementptr inbounds %struct.at91_usart_spi, %struct.at91_usart_spi* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %97, %76
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @at91_usart_spi_set_xfer_speed(%struct.at91_usart_spi*, %struct.spi_transfer*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @at91_usart_spi_can_dma(%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*) #1

declare dso_local i32 @at91_usart_spi_dma_transfer(%struct.spi_controller*, %struct.spi_transfer*) #1

declare dso_local i64 @at91_usart_spi_dma_timeout(%struct.at91_usart_spi*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @at91_usart_spi_read_status(%struct.at91_usart_spi*) #1

declare dso_local i32 @at91_usart_spi_tx(%struct.at91_usart_spi*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
