; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_7__, %struct.s3c24xx_uart_dma* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.s3c24xx_uart_dma = type { i8*, i8*, i32, i32, i8*, i8*, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i8*, i32, i64, i8* }
%struct.dma_slave_caps = type { i64 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@S3C2410_URXH = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@S3C2410_UTXH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"DMA RX channel request failed\00", align 1
@DMA_RESIDUE_GRANULARITY_BURST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"insufficient DMA RX engine capabilities\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"DMA TX channel request failed\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"insufficient DMA TX engine capabilities\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"DMA mapping error for RX buffer\00", align 1
@EIO = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"DMA mapping error for TX buffer\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"%s, DMA will not be used\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c24xx_uart_port*)* @s3c24xx_serial_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_request_dma(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3c24xx_uart_port*, align 8
  %4 = alloca %struct.s3c24xx_uart_dma*, align 8
  %5 = alloca %struct.dma_slave_caps, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %3, align 8
  %8 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %8, i32 0, i32 1
  %10 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %9, align 8
  store %struct.s3c24xx_uart_dma* %10, %struct.s3c24xx_uart_dma** %4, align 8
  store i8* null, i8** %6, align 8
  %11 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %12 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  store i32 %11, i32* %14, align 8
  %15 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %16 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 6
  store i8* %15, i8** %18, align 8
  %19 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S3C2410_URXH, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  store i64 %24, i64* %27, align 8
  %28 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %32 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 8
  %35 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %36 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  %39 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @S3C2410_UTXH, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  %48 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  %51 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @dma_request_chan(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %57 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %64 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %65 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %7, align 4
  br label %231

68:                                               ; preds = %1
  %69 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %70 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @dma_get_slave_caps(i8* %71, %struct.dma_slave_caps* %5)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %5, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DMA_RESIDUE_GRANULARITY_BURST, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %75, %68
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %81 = load i32, i32* @EOPNOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %226

83:                                               ; preds = %75
  %84 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %85 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %88 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %87, i32 0, i32 7
  %89 = call i32 @dmaengine_slave_config(i8* %86, %struct.TYPE_8__* %88)
  %90 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %91 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @dma_request_chan(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %96 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %98 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @IS_ERR(i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %83
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  %103 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %104 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @PTR_ERR(i8* %105)
  store i32 %106, i32* %7, align 4
  br label %226

107:                                              ; preds = %83
  %108 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %109 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @dma_get_slave_caps(i8* %110, %struct.dma_slave_caps* %5)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.dma_slave_caps, %struct.dma_slave_caps* %5, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @DMA_RESIDUE_GRANULARITY_BURST, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114, %107
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %120 = load i32, i32* @EOPNOTSUPP, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %7, align 4
  br label %221

122:                                              ; preds = %114
  %123 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %124 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %127 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %126, i32 0, i32 6
  %128 = call i32 @dmaengine_slave_config(i8* %125, %struct.TYPE_8__* %127)
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %131 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %133 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i32 @kmalloc(i32 %134, i32 %135)
  %137 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %138 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %140 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %122
  %144 = load i32, i32* @ENOMEM, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %221

146:                                              ; preds = %122
  %147 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %148 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %152 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %155 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %158 = call i8* @dma_map_single(i32 %150, i32 %153, i32 %156, i32 %157)
  %159 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %160 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  %161 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %162 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %166 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @dma_mapping_error(i32 %164, i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %146
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %216

173:                                              ; preds = %146
  %174 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %175 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %179 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @UART_XMIT_SIZE, align 4
  %186 = load i32, i32* @DMA_TO_DEVICE, align 4
  %187 = call i8* @dma_map_single(i32 %177, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %189 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  %190 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %191 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %195 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %194, i32 0, i32 5
  %196 = load i8*, i8** %195, align 8
  %197 = call i64 @dma_mapping_error(i32 %193, i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %173
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %7, align 4
  br label %203

202:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %243

203:                                              ; preds = %199
  %204 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %205 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %209 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %212 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %215 = call i32 @dma_unmap_single(i32 %207, i8* %210, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %203, %170
  %217 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %218 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @kfree(i32 %219)
  br label %221

221:                                              ; preds = %216, %143, %119
  %222 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %223 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @dma_release_channel(i8* %224)
  br label %226

226:                                              ; preds = %221, %102, %80
  %227 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %4, align 8
  %228 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @dma_release_channel(i8* %229)
  br label %231

231:                                              ; preds = %226, %63
  %232 = load i8*, i8** %6, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %236 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = call i32 @dev_warn(i32 %238, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %239)
  br label %241

241:                                              ; preds = %234, %231
  %242 = load i32, i32* %7, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %241, %202
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i8* @dma_request_chan(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dma_get_slave_caps(i8*, %struct.dma_slave_caps*) #1

declare dso_local i32 @dmaengine_slave_config(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_release_channel(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
