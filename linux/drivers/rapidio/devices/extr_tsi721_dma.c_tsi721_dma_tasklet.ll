; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_dma_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_dma_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i64, i32, %struct.tsi721_tx_desc*, i64, i32, i32, %struct.TYPE_5__, i64, i64, i64, i32, i64, i64 }
%struct.tsi721_tx_desc = type { i64, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i8*, i32 (i8*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TSI721_DMAC_INT = common dso_local global i64 0, align 8
@DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DMAC%d_INT = 0x%x\00", align 1
@TSI721_DMAC_INT_ERR = common dso_local global i32 0, align 4
@TSI721_DMAC_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"DMAC%d_STS = 0x%x did=%d raddr=0x%llx\00", align 1
@TSI721_DMAC_STS_ABORT = common dso_local global i32 0, align 4
@TSI721_DMAC_CTL_INIT = common dso_local global i32 0, align 4
@TSI721_DMAC_CTL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to re-initiate DMAC%d\00", align 1
@TSI721_DMAC_DPTRH = common dso_local global i64 0, align 8
@TSI721_DMAC_DPTRL_MASK = common dso_local global i32 0, align 4
@TSI721_DMAC_DPTRL = common dso_local global i64 0, align 8
@TSI721_DMAC_DSBH = common dso_local global i64 0, align 8
@TSI721_DMAC_DSBL_MASK = common dso_local global i32 0, align 4
@TSI721_DMAC_DSBL = common dso_local global i64 0, align 8
@TSI721_DMAC_DSSZ = common dso_local global i64 0, align 8
@TSI721_DMAC_INT_ALL = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@TSI721_DMAC_INT_STFULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"DMAC%d descriptor status FIFO is full\00", align 1
@TSI721_DMAC_INT_DONE = common dso_local global i32 0, align 4
@TSI721_DMAC_INT_IOFDONE = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@TSI721_DMAC_INTE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tsi721_dma_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_dma_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tsi721_bdma_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tsi721_tx_desc*, align 8
  %8 = alloca %struct.tsi721_tx_desc*, align 8
  %9 = alloca i32 (i8*)*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.tsi721_bdma_chan*
  store %struct.tsi721_bdma_chan* %12, %struct.tsi721_bdma_chan** %3, align 8
  %13 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %14 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TSI721_DMAC_INT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @ioread32(i64 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @DMA, align 4
  %20 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %21 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %26 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @tsi_debug(i32 %19, i32* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %32 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TSI721_DMAC_INT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TSI721_DMAC_INT_ERR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %227

41:                                               ; preds = %1
  store i32 10000, i32* %6, align 4
  %42 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %42, i32 0, i32 2
  %44 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %43, align 8
  store %struct.tsi721_tx_desc* %44, %struct.tsi721_tx_desc** %7, align 8
  %45 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TSI721_DMAC_STS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @ioread32(i64 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %52 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %57 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %7, align 8
  %61 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %7, align 8
  %64 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32*, i8*, i32, ...) @tsi_err(i32* %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @TSI721_DMAC_STS_ABORT, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %41
  br label %328

72:                                               ; preds = %41
  %73 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %74 = call i32 @tsi721_clr_stat(%struct.tsi721_bdma_chan* %73)
  %75 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %76 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %75, i32 0, i32 1
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i32, i32* @TSI721_DMAC_CTL_INIT, align 4
  %79 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %80 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TSI721_DMAC_CTL, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @iowrite32(i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %103, %72
  %86 = call i32 @udelay(i32 1)
  %87 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %88 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @TSI721_DMAC_STS, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @ioread32(i64 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @TSI721_DMAC_STS_ABORT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br label %103

103:                                              ; preds = %100, %95
  %104 = phi i1 [ false, %95 ], [ %102, %100 ]
  br i1 %104, label %85, label %105

105:                                              ; preds = %103
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @TSI721_DMAC_STS_ABORT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %105
  %111 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %112 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %117 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32*, i8*, i32, ...) @tsi_err(i32* %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %121 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %120, i32 0, i32 1
  %122 = call i32 @spin_unlock(i32* %121)
  br label %328

123:                                              ; preds = %105
  %124 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %125 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %124, i32 0, i32 12
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = ashr i32 %127, 32
  %129 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %130 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TSI721_DMAC_DPTRH, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @iowrite32(i32 %128, i64 %133)
  %135 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %136 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i32, i32* @TSI721_DMAC_DPTRL_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %142 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @TSI721_DMAC_DPTRL, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @iowrite32(i32 %140, i64 %145)
  %147 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %148 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = ashr i32 %150, 32
  %152 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %153 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TSI721_DMAC_DSBH, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @iowrite32(i32 %151, i64 %156)
  %158 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %159 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %158, i32 0, i32 11
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @TSI721_DMAC_DSBL_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %165 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TSI721_DMAC_DSBL, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i32 @iowrite32(i32 %163, i64 %168)
  %170 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %171 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @TSI721_DMAC_DSSZ_SIZE(i32 %172)
  %174 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %175 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @TSI721_DMAC_DSSZ, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @iowrite32(i32 %173, i64 %178)
  %180 = load i32, i32* @TSI721_DMAC_INT_ALL, align 4
  %181 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %182 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TSI721_DMAC_INT, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @iowrite32(i32 %180, i64 %185)
  %187 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %188 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @TSI721_DMAC_INT, align 8
  %191 = add nsw i64 %189, %190
  %192 = call i32 @ioread32(i64 %191)
  %193 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %194 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %193, i32 0, i32 8
  store i64 0, i64* %194, align 8
  %195 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %196 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %195, i32 0, i32 9
  store i64 0, i64* %196, align 8
  %197 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %198 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %197, i32 0, i32 7
  store i64 0, i64* %198, align 8
  %199 = call i32 @udelay(i32 10)
  %200 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %201 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %200, i32 0, i32 2
  %202 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %201, align 8
  store %struct.tsi721_tx_desc* %202, %struct.tsi721_tx_desc** %7, align 8
  %203 = load i32, i32* @DMA_ERROR, align 4
  %204 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %7, align 8
  %205 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %204, i32 0, i32 3
  store i32 %203, i32* %205, align 8
  %206 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %7, align 8
  %207 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %206, i32 0, i32 2
  %208 = call i32 @dma_cookie_complete(%struct.TYPE_6__* %207)
  %209 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %7, align 8
  %210 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %209, i32 0, i32 1
  %211 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %212 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %211, i32 0, i32 4
  %213 = call i32 @list_add(i32* %210, i32* %212)
  %214 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %215 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %214, i32 0, i32 2
  store %struct.tsi721_tx_desc* null, %struct.tsi721_tx_desc** %215, align 8
  %216 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %217 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %123
  %221 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %222 = call i32 @tsi721_advance_work(%struct.tsi721_bdma_chan* %221, %struct.tsi721_tx_desc* null)
  br label %223

223:                                              ; preds = %220, %123
  %224 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %225 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %224, i32 0, i32 1
  %226 = call i32 @spin_unlock(i32* %225)
  br label %227

227:                                              ; preds = %223, %1
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* @TSI721_DMAC_INT_STFULL, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %227
  %233 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %234 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %233, i32 0, i32 6
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %239 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i32*, i8*, i32, ...) @tsi_err(i32* %237, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %232, %227
  %243 = load i32, i32* %4, align 4
  %244 = load i32, i32* @TSI721_DMAC_INT_DONE, align 4
  %245 = load i32, i32* @TSI721_DMAC_INT_IOFDONE, align 4
  %246 = or i32 %244, %245
  %247 = and i32 %243, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %327

249:                                              ; preds = %242
  %250 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %251 = call i32 @tsi721_clr_stat(%struct.tsi721_bdma_chan* %250)
  %252 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %253 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %252, i32 0, i32 1
  %254 = call i32 @spin_lock(i32* %253)
  %255 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %256 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %255, i32 0, i32 2
  %257 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %256, align 8
  store %struct.tsi721_tx_desc* %257, %struct.tsi721_tx_desc** %8, align 8
  %258 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %259 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %311

262:                                              ; preds = %249
  store i32 (i8*)* null, i32 (i8*)** %9, align 8
  store i8* null, i8** %10, align 8
  %263 = load i32, i32* @DMA_COMPLETE, align 4
  %264 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %265 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %264, i32 0, i32 3
  store i32 %263, i32* %265, align 8
  %266 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %267 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %266, i32 0, i32 2
  %268 = call i32 @dma_cookie_complete(%struct.TYPE_6__* %267)
  %269 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %270 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %262
  %277 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %278 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 2
  %280 = load i32 (i8*)*, i32 (i8*)** %279, align 8
  store i32 (i8*)* %280, i32 (i8*)** %9, align 8
  %281 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %282 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  store i8* %284, i8** %10, align 8
  br label %285

285:                                              ; preds = %276, %262
  %286 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %8, align 8
  %287 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %286, i32 0, i32 1
  %288 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %289 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %288, i32 0, i32 4
  %290 = call i32 @list_add(i32* %287, i32* %289)
  %291 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %292 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %291, i32 0, i32 2
  store %struct.tsi721_tx_desc* null, %struct.tsi721_tx_desc** %292, align 8
  %293 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %294 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %285
  %298 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %299 = call i32 @tsi721_advance_work(%struct.tsi721_bdma_chan* %298, %struct.tsi721_tx_desc* null)
  br label %300

300:                                              ; preds = %297, %285
  %301 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %302 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %301, i32 0, i32 1
  %303 = call i32 @spin_unlock(i32* %302)
  %304 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %305 = icmp ne i32 (i8*)* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %300
  %307 = load i32 (i8*)*, i32 (i8*)** %9, align 8
  %308 = load i8*, i8** %10, align 8
  %309 = call i32 %307(i8* %308)
  br label %310

310:                                              ; preds = %306, %300
  br label %326

311:                                              ; preds = %249
  %312 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %313 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %311
  %317 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %318 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %319 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %318, i32 0, i32 2
  %320 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %319, align 8
  %321 = call i32 @tsi721_advance_work(%struct.tsi721_bdma_chan* %317, %struct.tsi721_tx_desc* %320)
  br label %322

322:                                              ; preds = %316, %311
  %323 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %324 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %323, i32 0, i32 1
  %325 = call i32 @spin_unlock(i32* %324)
  br label %326

326:                                              ; preds = %322, %310
  br label %327

327:                                              ; preds = %326, %242
  br label %328

328:                                              ; preds = %327, %110, %71
  %329 = load i32, i32* @TSI721_DMAC_INT_ALL, align 4
  %330 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %331 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = load i64, i64* @TSI721_DMAC_INTE, align 8
  %334 = add nsw i64 %332, %333
  %335 = call i32 @iowrite32(i32 %329, i64 %334)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @tsi721_clr_stat(%struct.tsi721_bdma_chan*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @TSI721_DMAC_DSSZ_SIZE(i32) #1

declare dso_local i32 @dma_cookie_complete(%struct.TYPE_6__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @tsi721_advance_work(%struct.tsi721_bdma_chan*, %struct.tsi721_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
