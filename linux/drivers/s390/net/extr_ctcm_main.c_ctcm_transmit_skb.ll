; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_ctcm_main.c_ctcm_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i32, %struct.net_device*, i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_10__*, i32, i64, %struct.TYPE_9__*, i32, i32 }
%struct.net_device = type { %struct.ctcm_priv* }
%struct.ctcm_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sk_buff = type { i64, i32, i32, i32 }
%struct.ll_header = type { i32, i64, i8* }

@CTC_STATE_TXIDLE = common dso_local global i64 0, align 8
@LL_HEADER_LENGTH = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@do_debug_ccw = common dso_local global i64 0, align 8
@CTC_STATE_TX = common dso_local global i32 0, align 4
@CTCM_TIME_5_SEC = common dso_local global i32 0, align 4
@CTC_EVENT_TIMER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"single skb TX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.channel*, %struct.sk_buff*)* @ctcm_transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctcm_transmit_skb(%struct.channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ll_header, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ctcm_priv*, align 8
  store %struct.channel* %0, %struct.channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.channel*, %struct.channel** %4, align 8
  %17 = getelementptr inbounds %struct.channel, %struct.channel* %16, i32 0, i32 11
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.channel*, %struct.channel** %4, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @fsm_getstate(i32 %22)
  %24 = load i64, i64* @CTC_STATE_TXIDLE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %82

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %31 = add i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load %struct.channel*, %struct.channel** %4, align 8
  %34 = getelementptr inbounds %struct.channel, %struct.channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %35, %36
  %38 = load %struct.channel*, %struct.channel** %4, align 8
  %39 = getelementptr inbounds %struct.channel, %struct.channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 2
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %26
  %44 = load %struct.channel*, %struct.channel** %4, align 8
  %45 = getelementptr inbounds %struct.channel, %struct.channel* %44, i32 0, i32 11
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %370

50:                                               ; preds = %26
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 1
  %53 = call i32 @refcount_inc(i32* %52)
  %54 = load i32, i32* %13, align 4
  %55 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @be16_to_cpu(i32 %58)
  %60 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 2
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i64 @skb_push(%struct.sk_buff* %62, i32 %64)
  %66 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %67 = call i32 @memcpy(i64 %65, %struct.ll_header* %7, i64 %66)
  %68 = load %struct.channel*, %struct.channel** %4, align 8
  %69 = getelementptr inbounds %struct.channel, %struct.channel* %68, i32 0, i32 12
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = call i32 @skb_queue_tail(i32* %69, %struct.sk_buff* %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.channel*, %struct.channel** %4, align 8
  %74 = getelementptr inbounds %struct.channel, %struct.channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %50
  %78 = load %struct.channel*, %struct.channel** %4, align 8
  %79 = getelementptr inbounds %struct.channel, %struct.channel* %78, i32 0, i32 11
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  br label %364

82:                                               ; preds = %2
  %83 = load %struct.channel*, %struct.channel** %4, align 8
  %84 = getelementptr inbounds %struct.channel, %struct.channel* %83, i32 0, i32 11
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = call i32 @refcount_inc(i32* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.channel*, %struct.channel** %4, align 8
  %94 = getelementptr inbounds %struct.channel, %struct.channel* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, %92
  store i64 %97, i64* %95, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %99 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %102 = add i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i8* @be16_to_cpu(i32 %107)
  %109 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 2
  store i8* %108, i8** %109, align 8
  %110 = getelementptr inbounds %struct.ll_header, %struct.ll_header* %7, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i64 @skb_push(%struct.sk_buff* %111, i32 %113)
  %115 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %116 = call i32 @memcpy(i64 %114, %struct.ll_header* %7, i64 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 2
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i64 @skb_push(%struct.sk_buff* %123, i32 2)
  %125 = inttoptr i64 %124 to i32*
  store i32 %122, i32* %125, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = call i64 @skb_tail_pointer(%struct.sk_buff* %126)
  %128 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %129 = add i64 %127, %128
  %130 = lshr i64 %129, 31
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %178

133:                                              ; preds = %82
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = load i32, i32* @GFP_ATOMIC, align 4
  %139 = load i32, i32* @GFP_DMA, align 4
  %140 = or i32 %138, %139
  %141 = call %struct.sk_buff* @alloc_skb(i32 %137, i32 %140)
  store %struct.sk_buff* %141, %struct.sk_buff** %11, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %143 = icmp ne %struct.sk_buff* %142, null
  br i1 %143, label %158, label %144

144:                                              ; preds = %133
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = call i32 @refcount_dec(i32* %146)
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %150 = add i64 %149, 2
  %151 = call i32 @skb_pull(%struct.sk_buff* %148, i64 %150)
  %152 = load %struct.channel*, %struct.channel** %4, align 8
  %153 = getelementptr inbounds %struct.channel, %struct.channel* %152, i32 0, i32 2
  %154 = load %struct.net_device*, %struct.net_device** %153, align 8
  %155 = call i32 @ctcm_clear_busy(%struct.net_device* %154)
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %370

158:                                              ; preds = %133
  %159 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @skb_put_data(%struct.sk_buff* %159, i32 %162, i32 %166)
  %168 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 1
  %170 = call i32 @refcount_inc(i32* %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 1
  %173 = call i32 @refcount_dec(i32* %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %175 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %176, %struct.sk_buff** %5, align 8
  br label %177

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177, %82
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.channel*, %struct.channel** %4, align 8
  %181 = getelementptr inbounds %struct.channel, %struct.channel* %180, i32 0, i32 7
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 4
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  %185 = load %struct.channel*, %struct.channel** %4, align 8
  %186 = getelementptr inbounds %struct.channel, %struct.channel* %185, i32 0, i32 7
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i64 4
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = call i64 @set_normalized_cda(%struct.TYPE_10__* %188, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %249

194:                                              ; preds = %178
  %195 = load %struct.channel*, %struct.channel** %4, align 8
  %196 = call i64 @ctcm_checkalloc_buffer(%struct.channel* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 1
  %201 = call i32 @refcount_dec(i32* %200)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %204 = add i64 %203, 2
  %205 = call i32 @skb_pull(%struct.sk_buff* %202, i64 %204)
  %206 = load %struct.channel*, %struct.channel** %4, align 8
  %207 = getelementptr inbounds %struct.channel, %struct.channel* %206, i32 0, i32 2
  %208 = load %struct.net_device*, %struct.net_device** %207, align 8
  %209 = call i32 @ctcm_clear_busy(%struct.net_device* %208)
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %3, align 4
  br label %370

212:                                              ; preds = %194
  %213 = load %struct.channel*, %struct.channel** %4, align 8
  %214 = getelementptr inbounds %struct.channel, %struct.channel* %213, i32 0, i32 10
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = call i32 @skb_reset_tail_pointer(%struct.TYPE_9__* %215)
  %217 = load %struct.channel*, %struct.channel** %4, align 8
  %218 = getelementptr inbounds %struct.channel, %struct.channel* %217, i32 0, i32 10
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = load %struct.channel*, %struct.channel** %4, align 8
  %226 = getelementptr inbounds %struct.channel, %struct.channel* %225, i32 0, i32 7
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i64 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  store i32 %224, i32* %229, align 4
  %230 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %231 = load %struct.channel*, %struct.channel** %4, align 8
  %232 = getelementptr inbounds %struct.channel, %struct.channel* %231, i32 0, i32 10
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = call i32 @skb_put(%struct.TYPE_9__* %233, i32 %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = trunc i64 %241 to i32
  %243 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %230, i32 %238, i32 %242)
  %244 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 1
  %246 = call i32 @refcount_dec(i32* %245)
  %247 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %248 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %247)
  store i32 0, i32* %10, align 4
  br label %254

249:                                              ; preds = %178
  %250 = load %struct.channel*, %struct.channel** %4, align 8
  %251 = getelementptr inbounds %struct.channel, %struct.channel* %250, i32 0, i32 3
  %252 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %253 = call i32 @skb_queue_tail(i32* %251, %struct.sk_buff* %252)
  store i32 3, i32* %10, align 4
  br label %254

254:                                              ; preds = %249, %212
  %255 = load i64, i64* @do_debug_ccw, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load %struct.channel*, %struct.channel** %4, align 8
  %259 = getelementptr inbounds %struct.channel, %struct.channel* %258, i32 0, i32 7
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 %262
  %264 = bitcast %struct.TYPE_10__* %263 to i8*
  %265 = call i32 @ctcmpc_dumpit(i8* %264, i32 12)
  br label %266

266:                                              ; preds = %257, %254
  %267 = load %struct.channel*, %struct.channel** %4, align 8
  %268 = getelementptr inbounds %struct.channel, %struct.channel* %267, i32 0, i32 9
  store i64 0, i64* %268, align 8
  %269 = load %struct.channel*, %struct.channel** %4, align 8
  %270 = getelementptr inbounds %struct.channel, %struct.channel* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @CTC_STATE_TX, align 4
  %273 = call i32 @fsm_newstate(i32 %271, i32 %272)
  %274 = load %struct.channel*, %struct.channel** %4, align 8
  %275 = getelementptr inbounds %struct.channel, %struct.channel* %274, i32 0, i32 4
  %276 = load i32, i32* @CTCM_TIME_5_SEC, align 4
  %277 = load i32, i32* @CTC_EVENT_TIMER, align 4
  %278 = load %struct.channel*, %struct.channel** %4, align 8
  %279 = call i32 @fsm_addtimer(i32* %275, i32 %276, i32 %277, %struct.channel* %278)
  %280 = load %struct.channel*, %struct.channel** %4, align 8
  %281 = getelementptr inbounds %struct.channel, %struct.channel* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = call i32* @get_ccwdev_lock(i32 %282)
  %284 = load i64, i64* %6, align 8
  %285 = call i32 @spin_lock_irqsave(i32* %283, i64 %284)
  %286 = load i32, i32* @jiffies, align 4
  %287 = load %struct.channel*, %struct.channel** %4, align 8
  %288 = getelementptr inbounds %struct.channel, %struct.channel* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  store i32 %286, i32* %289, align 4
  %290 = load %struct.channel*, %struct.channel** %4, align 8
  %291 = getelementptr inbounds %struct.channel, %struct.channel* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.channel*, %struct.channel** %4, align 8
  %294 = getelementptr inbounds %struct.channel, %struct.channel* %293, i32 0, i32 7
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i64 %297
  %299 = call i32 @ccw_device_start(i32 %292, %struct.TYPE_10__* %298, i32 0, i32 255, i32 0)
  store i32 %299, i32* %8, align 4
  %300 = load %struct.channel*, %struct.channel** %4, align 8
  %301 = getelementptr inbounds %struct.channel, %struct.channel* %300, i32 0, i32 6
  %302 = load i32, i32* %301, align 8
  %303 = call i32* @get_ccwdev_lock(i32 %302)
  %304 = load i64, i64* %6, align 8
  %305 = call i32 @spin_unlock_irqrestore(i32* %303, i64 %304)
  %306 = load i32, i32* %10, align 4
  %307 = icmp eq i32 %306, 3
  br i1 %307, label %308, label %314

308:                                              ; preds = %266
  %309 = load %struct.channel*, %struct.channel** %4, align 8
  %310 = getelementptr inbounds %struct.channel, %struct.channel* %309, i32 0, i32 5
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 8
  br label %314

314:                                              ; preds = %308, %266
  %315 = load i32, i32* %8, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %314
  %318 = load %struct.channel*, %struct.channel** %4, align 8
  %319 = getelementptr inbounds %struct.channel, %struct.channel* %318, i32 0, i32 4
  %320 = call i32 @fsm_deltimer(i32* %319)
  %321 = load %struct.channel*, %struct.channel** %4, align 8
  %322 = load i32, i32* %8, align 4
  %323 = call i32 @ctcm_ccw_check_rc(%struct.channel* %321, i32 %322, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %324 = load i32, i32* %10, align 4
  %325 = icmp eq i32 %324, 3
  br i1 %325, label %326, label %330

326:                                              ; preds = %317
  %327 = load %struct.channel*, %struct.channel** %4, align 8
  %328 = getelementptr inbounds %struct.channel, %struct.channel* %327, i32 0, i32 3
  %329 = call i32 @skb_dequeue_tail(i32* %328)
  br label %330

330:                                              ; preds = %326, %317
  %331 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %332 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %333 = add i64 %332, 2
  %334 = call i32 @skb_pull(%struct.sk_buff* %331, i64 %333)
  br label %363

335:                                              ; preds = %314
  %336 = load i32, i32* %10, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %362

338:                                              ; preds = %335
  %339 = load %struct.channel*, %struct.channel** %4, align 8
  %340 = getelementptr inbounds %struct.channel, %struct.channel* %339, i32 0, i32 2
  %341 = load %struct.net_device*, %struct.net_device** %340, align 8
  store %struct.net_device* %341, %struct.net_device** %14, align 8
  %342 = load %struct.net_device*, %struct.net_device** %14, align 8
  %343 = getelementptr inbounds %struct.net_device, %struct.net_device* %342, i32 0, i32 0
  %344 = load %struct.ctcm_priv*, %struct.ctcm_priv** %343, align 8
  store %struct.ctcm_priv* %344, %struct.ctcm_priv** %15, align 8
  %345 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  %346 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 4
  %350 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %351 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @LL_HEADER_LENGTH, align 8
  %354 = sub i64 %352, %353
  %355 = load %struct.ctcm_priv*, %struct.ctcm_priv** %15, align 8
  %356 = getelementptr inbounds %struct.ctcm_priv, %struct.ctcm_priv* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = sext i32 %358 to i64
  %360 = add i64 %359, %354
  %361 = trunc i64 %360 to i32
  store i32 %361, i32* %357, align 4
  br label %362

362:                                              ; preds = %338, %335
  br label %363

363:                                              ; preds = %362, %330
  br label %364

364:                                              ; preds = %363, %77
  %365 = load %struct.channel*, %struct.channel** %4, align 8
  %366 = getelementptr inbounds %struct.channel, %struct.channel* %365, i32 0, i32 2
  %367 = load %struct.net_device*, %struct.net_device** %366, align 8
  %368 = call i32 @ctcm_clear_busy(%struct.net_device* %367)
  %369 = load i32, i32* %8, align 4
  store i32 %369, i32* %3, align 4
  br label %370

370:                                              ; preds = %364, %198, %144, %43
  %371 = load i32, i32* %3, align 4
  ret i32 %371
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @fsm_getstate(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i64, %struct.ll_header*, i64) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @ctcm_clear_busy(%struct.net_device*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @set_normalized_cda(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @ctcm_checkalloc_buffer(%struct.channel*) #1

declare dso_local i32 @skb_reset_tail_pointer(%struct.TYPE_9__*) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ctcmpc_dumpit(i8*, i32) #1

declare dso_local i32 @fsm_newstate(i32, i32) #1

declare dso_local i32 @fsm_addtimer(i32*, i32, i32, %struct.channel*) #1

declare dso_local i32* @get_ccwdev_lock(i32) #1

declare dso_local i32 @ccw_device_start(i32, %struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @fsm_deltimer(i32*) #1

declare dso_local i32 @ctcm_ccw_check_rc(%struct.channel*, i32, i8*) #1

declare dso_local i32 @skb_dequeue_tail(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
