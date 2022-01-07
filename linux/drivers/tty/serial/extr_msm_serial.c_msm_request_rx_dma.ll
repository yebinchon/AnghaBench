; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_request_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_request_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i64, %struct.msm_dma, %struct.TYPE_2__ }
%struct.msm_dma = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"qcom,rx-crci\00", align 1
@UARTDM_RX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@UARTDM_RF = common dso_local global i64 0, align 8
@UARTDM_BURST_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UARTDM_1P4 = common dso_local global i64 0, align 8
@UARTDM_DMEN_RX_DM_ENABLE = common dso_local global i32 0, align 4
@UARTDM_DMEN_RX_BAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_port*, i64)* @msm_request_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_request_rx_dma(%struct.msm_port* %0, i64 %1) #0 {
  %3 = alloca %struct.msm_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dma_slave_config, align 8
  %7 = alloca %struct.msm_dma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_port* %0, %struct.msm_port** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %11 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %15 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %14, i32 0, i32 1
  store %struct.msm_dma* %15, %struct.msm_dma** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dma_request_slave_channel_reason(%struct.device* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %19 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %21 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %91

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @of_property_read_u32(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %31 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32 @kzalloc(i32 %31, i32 %32)
  %34 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %35 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %37 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %26
  br label %86

41:                                               ; preds = %26
  %42 = bitcast %struct.dma_slave_config* %6 to %struct.msm_dma*
  %43 = call i32 @memset(%struct.msm_dma* %42, i32 0, i32 48)
  %44 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %45 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 8
  store i32 %44, i32* %45, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @UARTDM_RF, align 8
  %49 = add nsw i64 %47, %48
  %50 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 7
  store i64 %49, i64* %50, align 8
  %51 = load i32, i32* @UARTDM_BURST_SIZE, align 4
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 6
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %6, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %56 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %struct.dma_slave_config* %6 to %struct.msm_dma*
  %59 = call i32 @dmaengine_slave_config(i32 %57, %struct.msm_dma* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %41
  br label %81

63:                                               ; preds = %41
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %66 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.msm_port*, %struct.msm_port** %3, align 8
  %68 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UARTDM_1P4, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* @UARTDM_DMEN_RX_DM_ENABLE, align 4
  %74 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %75 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %63
  %77 = load i32, i32* @UARTDM_DMEN_RX_BAM_ENABLE, align 4
  %78 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %79 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72
  br label %94

81:                                               ; preds = %62
  %82 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %83 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @kfree(i32 %84)
  br label %86

86:                                               ; preds = %81, %40
  %87 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %88 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dma_release_channel(i32 %89)
  br label %91

91:                                               ; preds = %86, %25
  %92 = load %struct.msm_dma*, %struct.msm_dma** %7, align 8
  %93 = call i32 @memset(%struct.msm_dma* %92, i32 0, i32 48)
  br label %94

94:                                               ; preds = %91, %80
  ret void
}

declare dso_local i32 @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.msm_dma*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(i32, %struct.msm_dma*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
