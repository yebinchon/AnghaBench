; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i8*, %struct.TYPE_4__, i64, %struct.TYPE_3__, i8* }
%struct.TYPE_4__ = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dma_slave_config = type { i32, i8*, i64, i32, i64, i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot get the DMA channel.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@URXD0 = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@RXTL_DMA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"error in RX dma configuration.\0A\00", align 1
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cannot get the TX DMA channel!\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@URTX0 = common dso_local global i64 0, align 8
@TXTL_DMA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"error in TX dma configuration.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_port*)* @imx_uart_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_uart_dma_init(%struct.imx_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.dma_slave_config, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  %7 = bitcast %struct.dma_slave_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 56, i1 false)
  %8 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %9 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call i8* @dma_request_slave_channel(%struct.device* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %15 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %17 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %16, i32 0, i32 4
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %106

25:                                               ; preds = %1
  %26 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %27 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  %28 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %29 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @URXD0, align 8
  %33 = add nsw i64 %31, %32
  %34 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 6
  store i64 %33, i64* %34, align 8
  %35 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 5
  store i8* %35, i8** %36, align 8
  %37 = load i64, i64* @RXTL_DMA, align 8
  %38 = sub nsw i64 %37, 1
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 4
  store i64 %38, i64* %39, align 8
  %40 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %41 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %40, i32 0, i32 4
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @dmaengine_slave_config(i8* %42, %struct.dma_slave_config* %4)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %25
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %106

49:                                               ; preds = %25
  %50 = load i32, i32* @RX_BUF_SIZE, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @kzalloc(i32 %50, i32 %51)
  %53 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %54 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %56 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %106

62:                                               ; preds = %49
  %63 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %64 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %67 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i8* @dma_request_slave_channel(%struct.device* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %74 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %62
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %106

82:                                               ; preds = %62
  %83 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %84 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 3
  store i32 %83, i32* %84, align 8
  %85 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %86 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @URTX0, align 8
  %90 = add nsw i64 %88, %89
  %91 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  %92 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %93 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 1
  store i8* %92, i8** %93, align 8
  %94 = load i32, i32* @TXTL_DMA, align 4
  %95 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 0
  store i32 %94, i32* %95, align 8
  %96 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %97 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @dmaengine_slave_config(i8* %98, %struct.dma_slave_config* %4)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %82
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = call i32 @dev_err(%struct.device* %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %106

105:                                              ; preds = %82
  store i32 0, i32* %2, align 4
  br label %110

106:                                              ; preds = %102, %77, %59, %46, %20
  %107 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %108 = call i32 @imx_uart_dma_exit(%struct.imx_port* %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %106, %105
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @dma_request_slave_channel(%struct.device*, i8*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i32 @dmaengine_slave_config(i8*, %struct.dma_slave_config*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i64 @kzalloc(i32, i32) #2

declare dso_local i32 @imx_uart_dma_exit(%struct.imx_port*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
