; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_interrupt_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_interrupt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64, i32, i32, i32, %struct.TYPE_5__, i64, i32, %struct.TYPE_6__*, i64, i64, %struct.ieee80211_low_level_stats }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"isr = 0xffff\0A\00", align 1
@ISR_FETALERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c" ISR_FETALERR\0A\00", align 1
@MAC_REG_SOFTPWRCTL = common dso_local global i64 0, align 8
@SOFTPWRCTL_SWPECTI = common dso_local global i32 0, align 4
@ISR_TBTT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@MAKE_BEACON_RESERVED = common dso_local global i32 0, align 4
@ISR_BNTX = common dso_local global i32 0, align 4
@ISR_RXDMA0 = common dso_local global i32 0, align 4
@TYPE_RXDMA0 = common dso_local global i32 0, align 4
@ISR_RXDMA1 = common dso_local global i32 0, align 4
@TYPE_RXDMA1 = common dso_local global i32 0, align 4
@ISR_TXDMA0 = common dso_local global i32 0, align 4
@TYPE_TXDMA0 = common dso_local global i32 0, align 4
@ISR_AC0DMA = common dso_local global i32 0, align 4
@TYPE_AC0DMA = common dso_local global i32 0, align 4
@ISR_SOFTTIMER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnt_private*)* @vnt_interrupt_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnt_interrupt_process(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.ieee80211_low_level_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %8 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %9 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %8, i32 0, i32 10
  store %struct.ieee80211_low_level_stats* %9, %struct.ieee80211_low_level_stats** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @MACvReadISR(i64 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %292

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %292

22:                                               ; preds = %17
  %23 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %24 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %23, i32 0, i32 3
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %28 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @MACvReadMIBCounter(i64 %29, i32* %5)
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 255
  %33 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, 8
  %39 = and i32 %38, 255
  %40 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %3, align 8
  %41 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %5, align 4
  %45 = ashr i32 %44, 16
  %46 = and i32 %45, 255
  %47 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %5, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = load %struct.ieee80211_low_level_stats*, %struct.ieee80211_low_level_stats** %3, align 8
  %55 = getelementptr inbounds %struct.ieee80211_low_level_stats, %struct.ieee80211_low_level_stats* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %286, %22
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %63 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %62, i32 0, i32 7
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %287

68:                                               ; preds = %66
  %69 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %70 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @MACvWriteISR(i64 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ISR_FETALERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %68
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %81 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @VNSvOutPortB(i64 %84, i32 0)
  %86 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MAC_REG_SOFTPWRCTL, align 8
  %90 = add nsw i64 %88, %89
  %91 = load i32, i32* @SOFTPWRCTL_SWPECTI, align 4
  %92 = call i32 @VNSvOutPortW(i64 %90, i32 %91)
  %93 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @device_error(%struct.vnt_private* %93, i32 %94)
  br label %96

96:                                               ; preds = %78, %68
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ISR_TBTT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %96
  %102 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %109 = call i32 @vnt_check_bb_vga(%struct.vnt_private* %108)
  br label %110

110:                                              ; preds = %107, %101
  %111 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %112 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  %113 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %114 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %113, i32 0, i32 9
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %119 = bitcast %struct.vnt_private* %118 to i8*
  %120 = call i32 @PSbIsNextTBTTWakeUp(i8* %119)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %123 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %129 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %153

133:                                              ; preds = %127, %121
  %134 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %135 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %134, i32 0, i32 7
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %133
  %142 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %143 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %144 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %143, i32 0, i32 7
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @MAKE_BEACON_RESERVED, align 4
  %150 = sub nsw i32 %148, %149
  %151 = shl i32 %150, 10
  %152 = call i32 @MACvOneShotTimer1MicroSec(%struct.vnt_private* %142, i32 %151)
  br label %153

153:                                              ; preds = %141, %133, %127
  br label %154

154:                                              ; preds = %153, %96
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @ISR_BNTX, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %161 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %167 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %166, i32 0, i32 2
  store i32 0, i32* %167, align 4
  %168 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %169 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %168, i32 0, i32 8
  store i64 0, i64* %169, align 8
  br label %170

170:                                              ; preds = %165, %159
  %171 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %172 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %171, i32 0, i32 1
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %154
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* @ISR_RXDMA0, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %180 = load i32, i32* @TYPE_RXDMA0, align 4
  %181 = call i64 @device_rx_srv(%struct.vnt_private* %179, i32 %180)
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %178, %173
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @ISR_RXDMA1, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %193 = load i32, i32* @TYPE_RXDMA1, align 4
  %194 = call i64 @device_rx_srv(%struct.vnt_private* %192, i32 %193)
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %191, %186
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @ISR_TXDMA0, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %206 = load i32, i32* @TYPE_TXDMA0, align 4
  %207 = call i64 @device_tx_srv(%struct.vnt_private* %205, i32 %206)
  %208 = load i32, i32* %4, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %204, %199
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @ISR_AC0DMA, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %212
  %218 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %219 = load i32, i32* @TYPE_AC0DMA, align 4
  %220 = call i64 @device_tx_srv(%struct.vnt_private* %218, i32 %219)
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %220
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %217, %212
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @ISR_SOFTTIMER1, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %245

230:                                              ; preds = %225
  %231 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %232 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %231, i32 0, i32 7
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %240 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %241 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %240, i32 0, i32 7
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = call i32 @vnt_beacon_make(%struct.vnt_private* %239, %struct.TYPE_6__* %242)
  br label %244

244:                                              ; preds = %238, %230
  br label %245

245:                                              ; preds = %244, %225
  %246 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %247 = load i32, i32* @TYPE_TXDMA0, align 4
  %248 = call i64 @AVAIL_TD(%struct.vnt_private* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %245
  %251 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %252 = load i32, i32* @TYPE_AC0DMA, align 4
  %253 = call i64 @AVAIL_TD(%struct.vnt_private* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %250
  %256 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %257 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = call i64 @ieee80211_queue_stopped(i32 %258, i32 0)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %255
  %262 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %263 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %262, i32 0, i32 6
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @ieee80211_wake_queues(i32 %264)
  br label %266

266:                                              ; preds = %261, %255, %250, %245
  %267 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %268 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @MACvReadISR(i64 %269, i32* %6)
  %271 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %272 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %271, i32 0, i32 5
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @MACvReceive0(i64 %273)
  %275 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %276 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %275, i32 0, i32 5
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @MACvReceive1(i64 %277)
  %279 = load i32, i32* %4, align 4
  %280 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %281 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp sgt i32 %279, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %266
  br label %287

286:                                              ; preds = %266
  br label %58

287:                                              ; preds = %285, %66
  %288 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %289 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %288, i32 0, i32 3
  %290 = load i64, i64* %7, align 8
  %291 = call i32 @spin_unlock_irqrestore(i32* %289, i64 %290)
  br label %292

292:                                              ; preds = %287, %20, %16
  ret void
}

declare dso_local i32 @MACvReadISR(i64, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @MACvReadMIBCounter(i64, i32*) #1

declare dso_local i32 @MACvWriteISR(i64, i32) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @device_error(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_check_bb_vga(%struct.vnt_private*) #1

declare dso_local i32 @PSbIsNextTBTTWakeUp(i8*) #1

declare dso_local i32 @MACvOneShotTimer1MicroSec(%struct.vnt_private*, i32) #1

declare dso_local i64 @device_rx_srv(%struct.vnt_private*, i32) #1

declare dso_local i64 @device_tx_srv(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_beacon_make(%struct.vnt_private*, %struct.TYPE_6__*) #1

declare dso_local i64 @AVAIL_TD(%struct.vnt_private*, i32) #1

declare dso_local i64 @ieee80211_queue_stopped(i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @MACvReceive0(i64) #1

declare dso_local i32 @MACvReceive1(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
