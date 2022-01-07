; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_alloc_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_alloc_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32, i32, i32, i32, i8*, i32, i32*, i32, i32*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32**, %struct.wl1271*, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ieee80211_hw*, i32 }
%struct.TYPE_2__ = type { i32* }

@wl1271_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"could not alloc ieee80211_hw\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"could not alloc wl priv\00", align 1
@NUM_TX_QUEUES = common dso_local global i32 0, align 4
@WLCORE_MAX_LINKS = common dso_local global i32 0, align 4
@wl1271_netstack_work = common dso_local global i32 0, align 4
@wl1271_tx_work = common dso_local global i32 0, align 4
@wl1271_recovery_work = common dso_local global i32 0, align 4
@wl1271_scan_complete_work = common dso_local global i32 0, align 4
@wlcore_roc_complete_work = common dso_local global i32 0, align 4
@wl12xx_tx_watchdog_work = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"wl12xx_wq\00", align 1
@WL1271_DEFAULT_POWER_LEVEL = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_CHAN_NO_HT = common dso_local global i32 0, align 4
@WL1271_PSM_ILLEGAL = common dso_local global i32 0, align 4
@WL12XX_SYSTEM_HLID = common dso_local global i32 0, align 4
@WLCORE_STATE_OFF = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_NONE = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @wlcore_alloc_hw(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i32 296, i32* @wl1271_ops)
  store %struct.ieee80211_hw* %14, %struct.ieee80211_hw** %8, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %16 = icmp ne %struct.ieee80211_hw* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = call i32 @wl1271_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %12, align 4
  br label %317

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 0
  %24 = load %struct.wl1271*, %struct.wl1271** %23, align 8
  store %struct.wl1271* %24, %struct.wl1271** %9, align 8
  %25 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %26 = call i32 @memset(%struct.wl1271* %25, i32 0, i32 296)
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i64 %27, i32 %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %21
  %37 = call i32 @wl1271_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  br label %314

40:                                               ; preds = %21
  %41 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 46
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %45 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 45
  store %struct.ieee80211_hw* %44, %struct.ieee80211_hw** %46, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %73, %40
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @NUM_TX_QUEUES, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %69, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @WLCORE_MAX_LINKS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 44
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @skb_queue_head_init(i32* %67)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %52

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %47

76:                                               ; preds = %47
  %77 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 43
  %79 = call i32 @skb_queue_head_init(i32* %78)
  %80 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 42
  %82 = call i32 @skb_queue_head_init(i32* %81)
  %83 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 41
  %85 = load i32, i32* @wl1271_netstack_work, align 4
  %86 = call i32 @INIT_WORK(i32* %84, i32 %85)
  %87 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 40
  %89 = load i32, i32* @wl1271_tx_work, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 39
  %93 = load i32, i32* @wl1271_recovery_work, align 4
  %94 = call i32 @INIT_WORK(i32* %92, i32 %93)
  %95 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 38
  %97 = load i32, i32* @wl1271_scan_complete_work, align 4
  %98 = call i32 @INIT_DELAYED_WORK(i32* %96, i32 %97)
  %99 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %100 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %99, i32 0, i32 37
  %101 = load i32, i32* @wlcore_roc_complete_work, align 4
  %102 = call i32 @INIT_DELAYED_WORK(i32* %100, i32 %101)
  %103 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %104 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %103, i32 0, i32 36
  %105 = load i32, i32* @wl12xx_tx_watchdog_work, align 4
  %106 = call i32 @INIT_DELAYED_WORK(i32* %104, i32 %105)
  %107 = call i32 @create_freezable_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %108 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %109 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 8
  %110 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %111 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %76
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  br label %307

117:                                              ; preds = %76
  %118 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %119 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %118, i32 0, i32 35
  store i64 0, i64* %119, align 8
  %120 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %121 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %120, i32 0, i32 34
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* @WL1271_DEFAULT_POWER_LEVEL, align 4
  %123 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %124 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %123, i32 0, i32 33
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %126 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %127 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %126, i32 0, i32 32
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @NL80211_CHAN_NO_HT, align 4
  %129 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %130 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %129, i32 0, i32 31
  store i32 %128, i32* %130, align 8
  %131 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %132 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %131, i32 0, i32 30
  store i64 0, i64* %132, align 8
  %133 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %134 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load i32, i32* @WL1271_PSM_ILLEGAL, align 4
  %136 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %137 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %136, i32 0, i32 29
  store i32 %135, i32* %137, align 8
  %138 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %139 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %138, i32 0, i32 28
  store i64 0, i64* %139, align 8
  %140 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %141 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %140, i32 0, i32 1
  store i32 -1, i32* %141, align 4
  %142 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %143 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %142, i32 0, i32 27
  store i64 0, i64* %143, align 8
  %144 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %145 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %144, i32 0, i32 26
  store i64 0, i64* %145, align 8
  %146 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %147 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %146, i32 0, i32 25
  store i64 0, i64* %147, align 8
  %148 = load i32, i32* @WL12XX_SYSTEM_HLID, align 4
  %149 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %150 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %149, i32 0, i32 24
  store i32 %148, i32* %150, align 8
  %151 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %152 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %151, i32 0, i32 23
  store i64 0, i64* %152, align 8
  %153 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %154 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %153, i32 0, i32 22
  store i64 0, i64* %154, align 8
  %155 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %156 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %155, i32 0, i32 21
  store i64 0, i64* %156, align 8
  %157 = load i32, i32* @WL12XX_SYSTEM_HLID, align 4
  %158 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %159 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %158, i32 0, i32 20
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @__set_bit(i32 %157, i32 %160)
  %162 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %163 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %162, i32 0, i32 19
  %164 = load %struct.wl1271*, %struct.wl1271** %163, align 8
  %165 = call i32 @memset(%struct.wl1271* %164, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %179, %117
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %169 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %174 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %173, i32 0, i32 18
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %172
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  br label %166

182:                                              ; preds = %166
  %183 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %184 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %183, i32 0, i32 17
  %185 = call i32 @spin_lock_init(i32* %184)
  %186 = load i32, i32* @WLCORE_STATE_OFF, align 4
  %187 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %188 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %187, i32 0, i32 16
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @WL12XX_FW_TYPE_NONE, align 4
  %190 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %191 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %190, i32 0, i32 15
  store i32 %189, i32* %191, align 4
  %192 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %193 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %192, i32 0, i32 14
  %194 = call i32 @mutex_init(i32* %193)
  %195 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %196 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %195, i32 0, i32 13
  %197 = call i32 @mutex_init(i32* %196)
  %198 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %199 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %198, i32 0, i32 12
  %200 = call i32 @init_completion(i32* %199)
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @get_order(i8* %201)
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = load i32, i32* %13, align 4
  %205 = call i64 @__get_free_pages(i32 %203, i32 %204)
  %206 = inttoptr i64 %205 to i32*
  %207 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %208 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %207, i32 0, i32 6
  store i32* %206, i32** %208, align 8
  %209 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %210 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %209, i32 0, i32 6
  %211 = load i32*, i32** %210, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %182
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %12, align 4
  br label %302

216:                                              ; preds = %182
  %217 = load i8*, i8** %6, align 8
  %218 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %219 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %218, i32 0, i32 11
  store i8* %217, i8** %219, align 8
  %220 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %221 = call i32 @wl12xx_alloc_dummy_packet(%struct.wl1271* %220)
  %222 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %223 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %222, i32 0, i32 7
  store i32 %221, i32* %223, align 8
  %224 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %225 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %216
  %229 = load i32, i32* @ENOMEM, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %12, align 4
  br label %295

231:                                              ; preds = %216
  %232 = load i32, i32* @GFP_KERNEL, align 4
  %233 = call i64 @get_zeroed_page(i32 %232)
  %234 = inttoptr i64 %233 to i32*
  %235 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %236 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %235, i32 0, i32 8
  store i32* %234, i32** %236, align 8
  %237 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %238 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %237, i32 0, i32 8
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %231
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %12, align 4
  br label %290

244:                                              ; preds = %231
  %245 = load i8*, i8** %7, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %248 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %250 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @GFP_KERNEL, align 4
  %253 = load i32, i32* @GFP_DMA, align 4
  %254 = or i32 %252, %253
  %255 = call i8* @kmalloc(i32 %251, i32 %254)
  %256 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %257 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %256, i32 0, i32 9
  store i8* %255, i8** %257, align 8
  %258 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %259 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %258, i32 0, i32 9
  %260 = load i8*, i8** %259, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %244
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %12, align 4
  br label %284

265:                                              ; preds = %244
  %266 = load i32, i32* @GFP_KERNEL, align 4
  %267 = call i8* @kmalloc(i32 1, i32 %266)
  %268 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %269 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %268, i32 0, i32 10
  store i8* %267, i8** %269, align 8
  %270 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %271 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %270, i32 0, i32 10
  %272 = load i8*, i8** %271, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %277, label %274

274:                                              ; preds = %265
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %12, align 4
  br label %279

277:                                              ; preds = %265
  %278 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %278, %struct.ieee80211_hw** %4, align 8
  br label %320

279:                                              ; preds = %274
  %280 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %281 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %280, i32 0, i32 9
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 @kfree(i8* %282)
  br label %284

284:                                              ; preds = %279, %262
  %285 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %286 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %285, i32 0, i32 8
  %287 = load i32*, i32** %286, align 8
  %288 = ptrtoint i32* %287 to i64
  %289 = call i32 @free_page(i64 %288)
  br label %290

290:                                              ; preds = %284, %241
  %291 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %292 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @dev_kfree_skb(i32 %293)
  br label %295

295:                                              ; preds = %290, %228
  %296 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %297 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %296, i32 0, i32 6
  %298 = load i32*, i32** %297, align 8
  %299 = ptrtoint i32* %298 to i64
  %300 = load i32, i32* %13, align 4
  %301 = call i32 @free_pages(i64 %299, i32 %300)
  br label %302

302:                                              ; preds = %295, %213
  %303 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %304 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @destroy_workqueue(i32 %305)
  br label %307

307:                                              ; preds = %302, %114
  %308 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %309 = call i32 @wl1271_debugfs_exit(%struct.wl1271* %308)
  %310 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %311 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %310, i32 0, i32 4
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 @kfree(i8* %312)
  br label %314

314:                                              ; preds = %307, %36
  %315 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %316 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %315)
  br label %317

317:                                              ; preds = %314, %17
  %318 = load i32, i32* %12, align 4
  %319 = call %struct.ieee80211_hw* @ERR_PTR(i32 %318)
  store %struct.ieee80211_hw* %319, %struct.ieee80211_hw** %4, align 8
  br label %320

320:                                              ; preds = %317, %277
  %321 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  ret %struct.ieee80211_hw* %321
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i32, i32*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @memset(%struct.wl1271*, i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @create_freezable_workqueue(i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @get_order(i8*) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @wl12xx_alloc_dummy_packet(%struct.wl1271*) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @wl1271_debugfs_exit(%struct.wl1271*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_hw* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
