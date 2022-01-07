; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_dma_channel_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_dma_channel_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i8*, i8*, %struct.TYPE_8__, i8*, %struct.dma_chan*, i8*, %struct.dma_chan*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.dma_chan = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dma_slave_config = type { i32, i8*, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DMA channel alloc failed: %d\0A\00", align 1
@TEGRA_UART_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Not able to allocate the dma buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"dma_map_single tx failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Dma slave config failed, err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_uart_port*, i32)* @tegra_uart_dma_channel_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_dma_channel_allocate(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_slave_config, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %19 = call %struct.dma_chan* @dma_request_slave_channel_reason(i32 %14, i8* %18)
  store %struct.dma_chan* %19, %struct.dma_chan** %6, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %21 = call i64 @IS_ERR(%struct.dma_chan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %2
  %24 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.dma_chan* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %153

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  %37 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @TEGRA_UART_RX_DMA_BUFFER_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @dma_alloc_coherent(i32 %40, i32 %41, i8** %8, i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %53 = call i32 @dma_release_channel(%struct.dma_chan* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %153

56:                                               ; preds = %36
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 5
  store i32 %60, i32* %61, align 8
  %62 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %63 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 4
  store i8* %62, i8** %63, align 8
  %64 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %64, i32 0, i32 7
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %71 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %71, i32 0, i32 6
  store %struct.dma_chan* %70, %struct.dma_chan** %72, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  br label %136

79:                                               ; preds = %33
  %80 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %81 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* @UART_XMIT_SIZE, align 4
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  %93 = call i8* @dma_map_single(i32 %83, i8* %90, i32 %91, i32 %92)
  store i8* %93, i8** %8, align 8
  %94 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %95 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = call i64 @dma_mapping_error(i32 %97, i8* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %79
  %102 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %103 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %108 = call i32 @dma_release_channel(%struct.dma_chan* %107)
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %153

111:                                              ; preds = %79
  %112 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %7, align 8
  %119 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %120 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 2
  store i32 %122, i32* %123, align 8
  %124 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %125 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 1
  store i8* %124, i8** %125, align 8
  %126 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 0
  store i32 16, i32* %126, align 8
  %127 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %128 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %129 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %128, i32 0, i32 4
  store %struct.dma_chan* %127, %struct.dma_chan** %129, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %132 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %135 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %111, %56
  %137 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %138 = call i32 @dmaengine_slave_config(%struct.dma_chan* %137, %struct.dma_slave_config* %10)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %143 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i32, i8*, ...) @dev_err(i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @tegra_uart_dma_channel_free(%struct.tegra_uart_port* %148, i32 %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %153

152:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %152, %141, %101, %46, %23
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i8* @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @tegra_uart_dma_channel_free(%struct.tegra_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
