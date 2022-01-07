; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-lpspi.c_fsl_lpspi_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_lpspi_data = type { i32, i32 }
%struct.spi_controller = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"can't get the TX DMA channel, error %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"can't get the RX DMA channel, error %d\0A\00", align 1
@fsl_lpspi_can_dma = common dso_local global i32 0, align 4
@FSL_LPSPI_MAX_EDMA_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.fsl_lpspi_data*, %struct.spi_controller*)* @fsl_lpspi_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_lpspi_dma_init(%struct.device* %0, %struct.fsl_lpspi_data* %1, %struct.spi_controller* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fsl_lpspi_data*, align 8
  %7 = alloca %struct.spi_controller*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.fsl_lpspi_data* %1, %struct.fsl_lpspi_data** %6, align 8
  store %struct.spi_controller* %2, %struct.spi_controller** %7, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i8* @dma_request_slave_channel_reason(%struct.device* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %13 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @IS_ERR(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %21 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i8* @dma_request_slave_channel_reason(%struct.device* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %32 = bitcast i8* %31 to i32*
  %33 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 2
  store i32* %32, i32** %34, align 8
  %35 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %36 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @IS_ERR(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %29
  %41 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %42 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @PTR_ERR(i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_dbg(%struct.device* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  br label %63

50:                                               ; preds = %29
  %51 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %52 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %51, i32 0, i32 1
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.fsl_lpspi_data*, %struct.fsl_lpspi_data** %6, align 8
  %55 = getelementptr inbounds %struct.fsl_lpspi_data, %struct.fsl_lpspi_data* %54, i32 0, i32 0
  %56 = call i32 @init_completion(i32* %55)
  %57 = load i32, i32* @fsl_lpspi_can_dma, align 4
  %58 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %59 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @FSL_LPSPI_MAX_EDMA_BYTES, align 4
  %61 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %62 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %4, align 4
  br label %67

63:                                               ; preds = %40, %19
  %64 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %65 = call i32 @fsl_lpspi_dma_exit(%struct.spi_controller* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %50
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i8* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @fsl_lpspi_dma_exit(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
