; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_chan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_dma_chan = type { i64, i32, i32, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32*, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.knav_dma_cfg = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32*, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i64, i64 }

@DMA_MEM_TO_DEV = common dso_local global i64 0, align 8
@DMA_TX_FILT_PSWORDS = common dso_local global i32 0, align 4
@DMA_TX_FILT_EINFO = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@CHAN_HAS_EPIB = common dso_local global i32 0, align 4
@CHAN_HAS_PSINFO = common dso_local global i32 0, align 4
@DMA_RETRY = common dso_local global i64 0, align 8
@CHAN_ERR_RETRY = common dso_local global i32 0, align 4
@DESC_TYPE_MASK = common dso_local global i32 0, align 4
@DESC_TYPE_SHIFT = common dso_local global i32 0, align 4
@CHAN_PSINFO_AT_SOP = common dso_local global i32 0, align 4
@CHAN_SOP_OFF_MASK = common dso_local global i32 0, align 4
@CHAN_SOP_OFF_SHIFT = common dso_local global i32 0, align 4
@CHAN_QNUM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knav_dma_chan*, %struct.knav_dma_cfg*)* @chan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chan_start(%struct.knav_dma_chan* %0, %struct.knav_dma_cfg* %1) #0 {
  %3 = alloca %struct.knav_dma_chan*, align 8
  %4 = alloca %struct.knav_dma_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.knav_dma_chan* %0, %struct.knav_dma_chan** %3, align 8
  store %struct.knav_dma_cfg* %1, %struct.knav_dma_cfg** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %7 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %10 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DMA_MEM_TO_DEV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %2
  %15 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %14
  %20 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @DMA_TX_FILT_PSWORDS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @DMA_TX_FILT_EINFO, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %44 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %43, i32 0, i32 5
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = call i32 @writel_relaxed(i32 %42, i32* %46)
  %48 = load i32, i32* @DMA_ENABLE, align 4
  %49 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %50 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %49, i32 0, i32 5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = call i32 @writel_relaxed(i32 %48, i32* %52)
  br label %54

54:                                               ; preds = %41, %14, %2
  %55 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %56 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = icmp ne %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %66 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %65, i32 0, i32 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = call i32 @writel_relaxed(i32 %64, i32* %68)
  br label %70

70:                                               ; preds = %59, %54
  %71 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %72 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %71, i32 0, i32 3
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = icmp ne %struct.TYPE_12__* %73, null
  br i1 %74, label %75, label %243

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  %76 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %77 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* @CHAN_HAS_EPIB, align 4
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %88 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @CHAN_HAS_PSINFO, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %99 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @DMA_RETRY, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %97
  %106 = load i32, i32* @CHAN_ERR_RETRY, align 4
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %97
  %110 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %111 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DESC_TYPE_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @DESC_TYPE_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  %121 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %122 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %109
  %128 = load i32, i32* @CHAN_PSINFO_AT_SOP, align 4
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %109
  %132 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %133 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CHAN_SOP_OFF_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @CHAN_SOP_OFF_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %144 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @CHAN_QNUM_MASK, align 4
  %149 = and i32 %147, %148
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %154 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %153, i32 0, i32 3
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  %157 = call i32 @writel_relaxed(i32 %152, i32* %156)
  %158 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %159 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %158, i32 0, i32 3
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = call i32 @writel_relaxed(i32 0, i32* %161)
  %163 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %164 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %163, i32 0, i32 3
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = call i32 @writel_relaxed(i32 0, i32* %166)
  %168 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %169 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 16
  store i32 %175, i32* %5, align 4
  %176 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %177 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @CHAN_QNUM_MASK, align 4
  %184 = and i32 %182, %183
  %185 = load i32, i32* %5, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %189 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %188, i32 0, i32 3
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = call i32 @writel_relaxed(i32 %187, i32* %193)
  %195 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %196 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = shl i32 %201, 16
  store i32 %202, i32* %5, align 4
  %203 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %204 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @CHAN_QNUM_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* %5, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %5, align 4
  %214 = load i32, i32* %5, align 4
  %215 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %216 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %215, i32 0, i32 3
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = call i32 @writel_relaxed(i32 %214, i32* %220)
  %222 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %223 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %222, i32 0, i32 3
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = call i32 @writel_relaxed(i32 0, i32* %227)
  %229 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %230 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %229, i32 0, i32 3
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 1
  %235 = call i32 @writel_relaxed(i32 0, i32* %234)
  %236 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %237 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %236, i32 0, i32 3
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 2
  %242 = call i32 @writel_relaxed(i32 0, i32* %241)
  br label %243

243:                                              ; preds = %131, %70
  %244 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %245 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %244, i32 0, i32 2
  %246 = load %struct.knav_dma_cfg*, %struct.knav_dma_cfg** %4, align 8
  %247 = call i32 @memcpy(i32* %245, %struct.knav_dma_cfg* %246, i32 80)
  %248 = load %struct.knav_dma_chan*, %struct.knav_dma_chan** %3, align 8
  %249 = getelementptr inbounds %struct.knav_dma_chan, %struct.knav_dma_chan* %248, i32 0, i32 1
  %250 = call i32 @spin_unlock(i32* %249)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.knav_dma_cfg*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
