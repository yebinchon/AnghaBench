; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_dma_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_dma_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dma_async_tx_descriptor = type { i32*, i8* }

@IER_RDREQE = common dso_local global i32 0, align 4
@IER_RDMAE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@sh_msiof_dma_complete = common dso_local global i8* null, align 8
@IER_TDREQE = common dso_local global i32 0, align 4
@IER_TDMAE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@FCTR = common dso_local global i32 0, align 4
@FCTR_TFWM_1 = common dso_local global i32 0, align 4
@FCTR_RFWM_1 = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to start hardware\0A\00", align 1
@IER_TEOFE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to shut down hardware\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_msiof_spi_priv*, i8*, i8*, i32)* @sh_msiof_dma_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_msiof_dma_once(%struct.sh_msiof_spi_priv* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sh_msiof_spi_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_async_tx_descriptor*, align 8
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %11, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %58

17:                                               ; preds = %4
  %18 = load i32, i32* @IER_RDREQE, align 4
  %19 = load i32, i32* @IER_RDMAE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %10, align 4
  %23 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %24 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %29 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %33 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %34 = load i32, i32* @DMA_CTRL_ACK, align 4
  %35 = or i32 %33, %34
  %36 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_10__* %27, i32 %30, i32 %31, i32 %32, i32 %35)
  store %struct.dma_async_tx_descriptor* %36, %struct.dma_async_tx_descriptor** %12, align 8
  %37 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %38 = icmp ne %struct.dma_async_tx_descriptor* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %17
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %284

42:                                               ; preds = %17
  %43 = load i8*, i8** @sh_msiof_dma_complete, align 8
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %47 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %46, i32 0, i32 4
  %48 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %49 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %51 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i64 @dma_submit_error(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %284

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %4
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %117

61:                                               ; preds = %58
  %62 = load i32, i32* @IER_TDREQE, align 4
  %63 = load i32, i32* @IER_TDMAE, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %68 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %77 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @DMA_TO_DEVICE, align 4
  %81 = call i32 @dma_sync_single_for_device(i32 %75, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %83 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %88 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %92 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %93 = load i32, i32* @DMA_CTRL_ACK, align 4
  %94 = or i32 %92, %93
  %95 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_10__* %86, i32 %89, i32 %90, i32 %91, i32 %94)
  store %struct.dma_async_tx_descriptor* %95, %struct.dma_async_tx_descriptor** %11, align 8
  %96 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %97 = icmp ne %struct.dma_async_tx_descriptor* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %61
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %14, align 4
  br label %269

101:                                              ; preds = %61
  %102 = load i8*, i8** @sh_msiof_dma_complete, align 8
  %103 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %106 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %105, i32 0, i32 5
  %107 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %108 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %107, i32 0, i32 0
  store i32* %106, i32** %108, align 8
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %11, align 8
  %110 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = call i64 @dma_submit_error(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %101
  %115 = load i32, i32* %13, align 4
  store i32 %115, i32* %14, align 4
  br label %269

116:                                              ; preds = %101
  br label %117

117:                                              ; preds = %116, %58
  %118 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %119 = load i32, i32* @FCTR, align 4
  %120 = load i32, i32* @FCTR_TFWM_1, align 4
  %121 = load i32, i32* @FCTR_RFWM_1, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %118, i32 %119, i32 %122)
  %124 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = udiv i32 %127, 4
  %129 = call i32 @sh_msiof_spi_set_mode_regs(%struct.sh_msiof_spi_priv* %124, i8* %125, i8* %126, i32 32, i32 %128)
  %130 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %131 = load i32, i32* @IER, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %130, i32 %131, i32 %132)
  %134 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %135 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %134, i32 0, i32 4
  %136 = call i32 @reinit_completion(i32* %135)
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %117
  %140 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %141 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %140, i32 0, i32 5
  %142 = call i32 @reinit_completion(i32* %141)
  br label %143

143:                                              ; preds = %139, %117
  %144 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %145 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %150 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %149, i32 0, i32 1
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = call i32 @dma_async_issue_pending(%struct.TYPE_10__* %153)
  br label %155

155:                                              ; preds = %148, %143
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %160 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %159, i32 0, i32 1
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @dma_async_issue_pending(%struct.TYPE_10__* %163)
  br label %165

165:                                              ; preds = %158, %155
  %166 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = call i32 @sh_msiof_spi_start(%struct.sh_msiof_spi_priv* %166, i8* %167)
  store i32 %168, i32* %14, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %173 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %172, i32 0, i32 3
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = call i32 @dev_err(i32* %175, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %258

177:                                              ; preds = %165
  %178 = load i8*, i8** %7, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %182 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %183 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %182, i32 0, i32 5
  %184 = call i32 @sh_msiof_wait_for_completion(%struct.sh_msiof_spi_priv* %181, i32* %183)
  store i32 %184, i32* %14, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %252

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %177
  %190 = load i8*, i8** %8, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %194 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %195 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %194, i32 0, i32 4
  %196 = call i32 @sh_msiof_wait_for_completion(%struct.sh_msiof_spi_priv* %193, i32* %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %252

200:                                              ; preds = %192
  %201 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %202 = load i32, i32* @IER, align 4
  %203 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %201, i32 %202, i32 0)
  br label %217

204:                                              ; preds = %189
  %205 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %206 = load i32, i32* @IER, align 4
  %207 = load i32, i32* @IER_TEOFE, align 4
  %208 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %205, i32 %206, i32 %207)
  %209 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %210 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %211 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %210, i32 0, i32 4
  %212 = call i32 @sh_msiof_wait_for_completion(%struct.sh_msiof_spi_priv* %209, i32* %211)
  store i32 %212, i32* %14, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %252

216:                                              ; preds = %204
  br label %217

217:                                              ; preds = %216, %200
  %218 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %219 = call i32 @sh_msiof_reset_str(%struct.sh_msiof_spi_priv* %218)
  %220 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = call i32 @sh_msiof_spi_stop(%struct.sh_msiof_spi_priv* %220, i8* %221)
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* %14, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %217
  %226 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %227 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %226, i32 0, i32 3
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = call i32 @dev_err(i32* %229, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %231 = load i32, i32* %14, align 4
  store i32 %231, i32* %5, align 4
  br label %284

232:                                              ; preds = %217
  %233 = load i8*, i8** %8, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %251

235:                                              ; preds = %232
  %236 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %237 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %236, i32 0, i32 1
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %246 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %250 = call i32 @dma_sync_single_for_cpu(i32 %244, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %235, %232
  store i32 0, i32* %5, align 4
  br label %284

252:                                              ; preds = %215, %199, %187
  %253 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %254 = call i32 @sh_msiof_reset_str(%struct.sh_msiof_spi_priv* %253)
  %255 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %256 = load i8*, i8** %8, align 8
  %257 = call i32 @sh_msiof_spi_stop(%struct.sh_msiof_spi_priv* %255, i8* %256)
  br label %258

258:                                              ; preds = %252, %171
  %259 = load i8*, i8** %7, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %263 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %262, i32 0, i32 1
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %265, align 8
  %267 = call i32 @dmaengine_terminate_all(%struct.TYPE_10__* %266)
  br label %268

268:                                              ; preds = %261, %258
  br label %269

269:                                              ; preds = %268, %114, %98
  %270 = load i8*, i8** %8, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %279

272:                                              ; preds = %269
  %273 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %274 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %273, i32 0, i32 1
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %276, align 8
  %278 = call i32 @dmaengine_terminate_all(%struct.TYPE_10__* %277)
  br label %279

279:                                              ; preds = %272, %269
  %280 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %6, align 8
  %281 = load i32, i32* @IER, align 4
  %282 = call i32 @sh_msiof_write(%struct.sh_msiof_spi_priv* %280, i32 %281, i32 0)
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %279, %251, %225, %55, %39
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @sh_msiof_write(%struct.sh_msiof_spi_priv*, i32, i32) #1

declare dso_local i32 @sh_msiof_spi_set_mode_regs(%struct.sh_msiof_spi_priv*, i8*, i8*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_10__*) #1

declare dso_local i32 @sh_msiof_spi_start(%struct.sh_msiof_spi_priv*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sh_msiof_wait_for_completion(%struct.sh_msiof_spi_priv*, i32*) #1

declare dso_local i32 @sh_msiof_reset_str(%struct.sh_msiof_spi_priv*) #1

declare dso_local i32 @sh_msiof_spi_stop(%struct.sh_msiof_spi_priv*, i8*) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
