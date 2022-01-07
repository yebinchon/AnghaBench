; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_copy_rx_to_tty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_copy_rx_to_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_9__, i32, i32, i32, %struct.circ_buf }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.circ_buf = type { i64, i64, i32 }
%struct.dma_tx_state = type { i64 }

@UARTSTAT = common dso_local global i32 0, align 4
@UARTSTAT_PE = common dso_local global i64 0, align 8
@UARTSTAT_FE = common dso_local global i64 0, align 8
@UARTDATA = common dso_local global i32 0, align 4
@UARTSR1 = common dso_local global i64 0, align 8
@UARTSR1_PE = common dso_local global i8 0, align 1
@UARTSR1_FE = common dso_local global i8 0, align 1
@UARTCR2 = common dso_local global i64 0, align 8
@UARTCR2_RE = common dso_local global i8 0, align 1
@UARTDR = common dso_local global i64 0, align 8
@UARTSFIFO = common dso_local global i64 0, align 8
@UARTSFIFO_RXUF = common dso_local global i32 0, align 4
@UARTCFIFO_RXFLUSH = common dso_local global i8 0, align 1
@UARTCFIFO = common dso_local global i64 0, align 8
@DMA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Rx DMA transfer failed!\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_copy_rx_to_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_copy_rx_to_tty(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca %struct.tty_port*, align 8
  %4 = alloca %struct.dma_tx_state, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %12 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %13 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.tty_port* %16, %struct.tty_port** %3, align 8
  %17 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %18 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %17, i32 0, i32 7
  store %struct.circ_buf* %18, %struct.circ_buf** %6, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %20 = call i64 @lpuart_is_32(%struct.lpuart_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %1
  %23 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %24 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %23, i32 0, i32 2
  %25 = load i32, i32* @UARTSTAT, align 4
  %26 = call i64 @lpuart32_read(%struct.TYPE_8__* %24, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @UARTSTAT_PE, align 8
  %29 = load i64, i64* @UARTSTAT_FE, align 8
  %30 = or i64 %28, %29
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %22
  %34 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %35 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %34, i32 0, i32 2
  %36 = load i32, i32* @UARTDATA, align 4
  %37 = call i64 @lpuart32_read(%struct.TYPE_8__* %35, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @UARTSTAT_PE, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %44 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %62

49:                                               ; preds = %33
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @UARTSTAT_FE, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %56 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %54, %49
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %22
  br label %186

64:                                               ; preds = %1
  %65 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %66 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UARTSR1, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readb(i64 %70)
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %10, align 1
  %73 = load i8, i8* %10, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @UARTSR1_PE, align 1
  %76 = zext i8 %75 to i32
  %77 = load i8, i8* @UARTSR1_FE, align 1
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = and i32 %74, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %185

82:                                               ; preds = %64
  %83 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %84 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @UARTCR2, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readb(i64 %88)
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %11, align 1
  %91 = load i8, i8* @UARTCR2_RE, align 1
  %92 = zext i8 %91 to i32
  %93 = xor i32 %92, -1
  %94 = load i8, i8* %11, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, %93
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %11, align 1
  %98 = load i8, i8* %11, align 1
  %99 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %100 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @UARTCR2, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @writeb(i8 zeroext %98, i64 %104)
  %106 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %107 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @UARTDR, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @readb(i64 %111)
  %113 = load i8, i8* %10, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @UARTSR1_PE, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %82
  %120 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %121 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  br label %141

126:                                              ; preds = %82
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = load i8, i8* @UARTSR1_FE, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %135 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %133, %126
  br label %141

141:                                              ; preds = %140, %119
  %142 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %143 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @UARTSFIFO, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @readb(i64 %147)
  %149 = load i32, i32* @UARTSFIFO_RXUF, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %141
  %153 = load i32, i32* @UARTSFIFO_RXUF, align 4
  %154 = trunc i32 %153 to i8
  %155 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %156 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @UARTSFIFO, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writeb(i8 zeroext %154, i64 %160)
  %162 = load i8, i8* @UARTCFIFO_RXFLUSH, align 1
  %163 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %164 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @UARTCFIFO, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @writeb(i8 zeroext %162, i64 %168)
  br label %170

170:                                              ; preds = %152, %141
  %171 = load i8, i8* @UARTCR2_RE, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8, i8* %11, align 1
  %174 = zext i8 %173 to i32
  %175 = or i32 %174, %172
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %11, align 1
  %177 = load i8, i8* %11, align 1
  %178 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %179 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @UARTCR2, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writeb(i8 zeroext %177, i64 %183)
  br label %185

185:                                              ; preds = %170, %64
  br label %186

186:                                              ; preds = %185, %63
  %187 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %188 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @async_tx_ack(i32 %189)
  %191 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %192 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i64, i64* %7, align 8
  %195 = call i32 @spin_lock_irqsave(i32* %193, i64 %194)
  %196 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %197 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %200 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @dmaengine_tx_status(i32 %198, i32 %201, %struct.dma_tx_state* %4)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @DMA_ERROR, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %186
  %207 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %208 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dev_err(i32 %210, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %212 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %213 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i64, i64* %7, align 8
  %216 = call i32 @spin_unlock_irqrestore(i32* %214, i64 %215)
  br label %360

217:                                              ; preds = %186
  %218 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %219 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %223 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %222, i32 0, i32 3
  %224 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %225 = call i32 @dma_sync_sg_for_cpu(i32 %221, %struct.TYPE_9__* %223, i32 1, i32 %224)
  %226 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %227 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %4, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = sub nsw i64 %229, %231
  %233 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %234 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  %235 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %236 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %239 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp sgt i64 %237, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @BUG_ON(i32 %243)
  %245 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %246 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %249 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %247, %250
  br i1 %251, label %252, label %283

252:                                              ; preds = %217
  %253 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %254 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %258 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = sub nsw i64 %256, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %8, align 4
  %262 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %263 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %264 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %268 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = add nsw i64 %266, %269
  %271 = trunc i64 %270 to i32
  %272 = load i32, i32* %8, align 4
  %273 = call i32 @tty_insert_flip_string(%struct.tty_port* %262, i32 %271, i32 %272)
  %274 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %275 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %274, i32 0, i32 1
  store i64 0, i64* %275, align 8
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %278 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, %276
  store i32 %282, i32* %280, align 8
  br label %283

283:                                              ; preds = %252, %217
  %284 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %285 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %288 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = icmp slt i64 %286, %289
  br i1 %290, label %291, label %336

291:                                              ; preds = %283
  %292 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %293 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %296 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = sub nsw i64 %294, %297
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %8, align 4
  %300 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %301 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %302 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %306 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = add nsw i64 %304, %307
  %309 = trunc i64 %308 to i32
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @tty_insert_flip_string(%struct.tty_port* %300, i32 %309, i32 %310)
  %312 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %313 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %316 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp sge i64 %314, %318
  br i1 %319, label %320, label %323

320:                                              ; preds = %291
  %321 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %322 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %321, i32 0, i32 0
  store i64 0, i64* %322, align 8
  br label %323

323:                                              ; preds = %320, %291
  %324 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %325 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %328 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %327, i32 0, i32 1
  store i64 %326, i64* %328, align 8
  %329 = load i32, i32* %8, align 4
  %330 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %331 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = add nsw i32 %334, %329
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %323, %283
  %337 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %338 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %337, i32 0, i32 2
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %342 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %341, i32 0, i32 3
  %343 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %344 = call i32 @dma_sync_sg_for_device(i32 %340, %struct.TYPE_9__* %342, i32 1, i32 %343)
  %345 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %346 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %346, i32 0, i32 0
  %348 = load i64, i64* %7, align 8
  %349 = call i32 @spin_unlock_irqrestore(i32* %347, i64 %348)
  %350 = load %struct.tty_port*, %struct.tty_port** %3, align 8
  %351 = call i32 @tty_flip_buffer_push(%struct.tty_port* %350)
  %352 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %353 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %352, i32 0, i32 1
  %354 = load i64, i64* @jiffies, align 8
  %355 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %356 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = add nsw i64 %354, %357
  %359 = call i32 @mod_timer(i32* %353, i64 %358)
  br label %360

360:                                              ; preds = %336, %206
  ret void
}

declare dso_local i64 @lpuart_is_32(%struct.lpuart_port*) #1

declare dso_local i64 @lpuart32_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i8 zeroext, i64) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
