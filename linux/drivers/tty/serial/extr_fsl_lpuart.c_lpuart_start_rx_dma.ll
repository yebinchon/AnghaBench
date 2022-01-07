; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_12__*, i32, %struct.TYPE_10__, %struct.circ_buf }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.tty_port }
%struct.tty_port = type { %struct.tty_struct* }
%struct.tty_struct = type { %struct.ktermios }
%struct.ktermios = type { i32 }
%struct.TYPE_12__ = type { %struct.lpuart_port*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.circ_buf = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS7 = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@DMA_RX_TIMEOUT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DMA Rx mapping error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"DMA Rx slave config failed, err = %d\0A\00", align 1
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot prepare cyclic DMA\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@lpuart_dma_rx_complete = common dso_local global i32 0, align 4
@UARTBAUD = common dso_local global i32 0, align 4
@UARTBAUD_RDMAE = common dso_local global i64 0, align 8
@UARTCR5 = common dso_local global i64 0, align 8
@UARTCR5_RDMAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpuart_port*)* @lpuart_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpuart_start_rx_dma(%struct.lpuart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpuart_port*, align 8
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tty_port*, align 8
  %11 = alloca %struct.tty_struct*, align 8
  %12 = alloca %struct.ktermios*, align 8
  %13 = alloca i64, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %3, align 8
  %14 = bitcast %struct.dma_slave_config* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 16, i1 false)
  %15 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %16 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %15, i32 0, i32 6
  store %struct.circ_buf* %16, %struct.circ_buf** %5, align 8
  %17 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %18 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store %struct.tty_port* %21, %struct.tty_port** %10, align 8
  %22 = load %struct.tty_port*, %struct.tty_port** %10, align 8
  %23 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %22, i32 0, i32 0
  %24 = load %struct.tty_struct*, %struct.tty_struct** %23, align 8
  store %struct.tty_struct* %24, %struct.tty_struct** %11, align 8
  %25 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %26 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %25, i32 0, i32 0
  store %struct.ktermios* %26, %struct.ktermios** %12, align 8
  %27 = load %struct.tty_struct*, %struct.tty_struct** %11, align 8
  %28 = call i32 @tty_get_baud_rate(%struct.tty_struct* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ktermios*, %struct.ktermios** %12, align 8
  %30 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CSIZE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @CS7, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 9, i32 10
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ktermios*, %struct.ktermios** %12, align 8
  %39 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PARENB, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %1
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %1
  %48 = load i32, i32* @DMA_RX_TIMEOUT, align 4
  %49 = load i32, i32* %9, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sdiv i32 %50, %51
  %53 = sdiv i32 %52, 1000
  %54 = mul nsw i32 %53, 2
  %55 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %56 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %58 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @fls(i32 %59)
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  %63 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %64 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %66 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 16
  br i1 %68, label %69, label %72

69:                                               ; preds = %47
  %70 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %71 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %70, i32 0, i32 0
  store i32 16, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %47
  %73 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %74 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @GFP_ATOMIC, align 4
  %77 = call i32 @kzalloc(i32 %75, i32 %76)
  %78 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %79 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %225

87:                                               ; preds = %72
  %88 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %89 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %88, i32 0, i32 5
  %90 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %91 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %94 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @sg_init_one(%struct.TYPE_10__* %89, i32 %92, i32 %95)
  %97 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %98 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %102 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %101, i32 0, i32 5
  %103 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %104 = call i32 @dma_map_sg(i32 %100, %struct.TYPE_10__* %102, i32 1, i32 %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %87
  %108 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %109 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %225

115:                                              ; preds = %87
  %116 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %117 = call i32 @lpuart_dma_datareg_addr(%struct.lpuart_port* %116)
  %118 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 3
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @DMA_SLAVE_BUSWIDTH_1_BYTE, align 4
  %120 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 2
  store i32 %119, i32* %120, align 4
  %121 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 0
  store i32 1, i32* %121, align 4
  %122 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %123 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %4, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %125 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dmaengine_slave_config(i32 %126, %struct.dma_slave_config* %4)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %115
  %131 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %132 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %6, align 4
  store i32 %137, i32* %2, align 4
  br label %225

138:                                              ; preds = %115
  %139 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %140 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %143 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %142, i32 0, i32 5
  %144 = call i32 @sg_dma_address(%struct.TYPE_10__* %143)
  %145 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %146 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %150 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sdiv i32 %152, 2
  %154 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %155 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %156 = call %struct.TYPE_12__* @dmaengine_prep_dma_cyclic(i32 %141, i32 %144, i32 %148, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %158 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %157, i32 0, i32 3
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %158, align 8
  %159 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %160 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %159, i32 0, i32 3
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %160, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %171, label %163

163:                                              ; preds = %138
  %164 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %165 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i32, i8*, ...) @dev_err(i32 %167, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %169 = load i32, i32* @EFAULT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %225

171:                                              ; preds = %138
  %172 = load i32, i32* @lpuart_dma_rx_complete, align 4
  %173 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %174 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %173, i32 0, i32 3
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  store i32 %172, i32* %176, align 8
  %177 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %178 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %179 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %178, i32 0, i32 3
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store %struct.lpuart_port* %177, %struct.lpuart_port** %181, align 8
  %182 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %183 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %182, i32 0, i32 3
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = call i32 @dmaengine_submit(%struct.TYPE_12__* %184)
  %186 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %187 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %186, i32 0, i32 4
  store i32 %185, i32* %187, align 8
  %188 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %189 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @dma_async_issue_pending(i32 %190)
  %192 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %193 = call i64 @lpuart_is_32(%struct.lpuart_port* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %171
  %196 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %197 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %196, i32 0, i32 1
  %198 = load i32, i32* @UARTBAUD, align 4
  %199 = call i64 @lpuart32_read(%struct.TYPE_11__* %197, i32 %198)
  store i64 %199, i64* %13, align 8
  %200 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %201 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %200, i32 0, i32 1
  %202 = load i64, i64* %13, align 8
  %203 = load i64, i64* @UARTBAUD_RDMAE, align 8
  %204 = or i64 %202, %203
  %205 = load i32, i32* @UARTBAUD, align 4
  %206 = call i32 @lpuart32_write(%struct.TYPE_11__* %201, i64 %204, i32 %205)
  br label %224

207:                                              ; preds = %171
  %208 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %209 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @UARTCR5, align 8
  %213 = add nsw i64 %211, %212
  %214 = call i32 @readb(i64 %213)
  %215 = load i32, i32* @UARTCR5_RDMAS, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %218 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @UARTCR5, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @writeb(i32 %216, i64 %222)
  br label %224

224:                                              ; preds = %207, %195
  store i32 0, i32* %2, align 4
  br label %225

225:                                              ; preds = %224, %163, %130, %107, %84
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #2

declare dso_local i32 @fls(i32) #2

declare dso_local i32 @kzalloc(i32, i32) #2

declare dso_local i32 @sg_init_one(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @dma_map_sg(i32, %struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @dev_err(i32, i8*, ...) #2

declare dso_local i32 @lpuart_dma_datareg_addr(%struct.lpuart_port*) #2

declare dso_local i32 @dmaengine_slave_config(i32, %struct.dma_slave_config*) #2

declare dso_local %struct.TYPE_12__* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @sg_dma_address(%struct.TYPE_10__*) #2

declare dso_local i32 @dmaengine_submit(%struct.TYPE_12__*) #2

declare dso_local i32 @dma_async_issue_pending(i32) #2

declare dso_local i64 @lpuart_is_32(%struct.lpuart_port*) #2

declare dso_local i64 @lpuart32_read(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @lpuart32_write(%struct.TYPE_11__*, i64, i32) #2

declare dso_local i32 @writeb(i32, i64) #2

declare dso_local i32 @readb(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
