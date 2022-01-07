; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_irq_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@WL1271_IRQ_MAX_LOOPS = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@DEBUG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"IRQ work\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WL1271_FLAG_IRQ_RUNNING = common dso_local global i32 0, align 4
@WLCORE_ALL_INTR_MASK = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_WATCHDOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"HW watchdog interrupt received! starting recovery.\00", align 1
@EIO = common dso_local global i32 0, align 4
@WL1271_ACX_SW_INTR_WATCHDOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"SW watchdog interrupt received! starting recovery.\00", align 1
@WL1271_ACX_INTR_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"WL1271_ACX_INTR_DATA\00", align 1
@WL1271_FLAG_FW_TX_BUSY = common dso_local global i32 0, align 4
@WL1271_DEFERRED_QUEUE_LIMIT = common dso_local global i32 0, align 4
@WL1271_ACX_INTR_EVENT_A = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"WL1271_ACX_INTR_EVENT_A\00", align 1
@WL1271_ACX_INTR_EVENT_B = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"WL1271_ACX_INTR_EVENT_B\00", align 1
@WL1271_ACX_INTR_INIT_COMPLETE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"WL1271_ACX_INTR_INIT_COMPLETE\00", align 1
@WL1271_ACX_INTR_HW_AVAILABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"WL1271_ACX_INTR_HW_AVAILABLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*)* @wlcore_irq_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_irq_locked(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* @WL1271_IRQ_MAX_LOOPS, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %14 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i32, i32* @DEBUG_IRQ, align 4
  %21 = call i32 @wl1271_debug(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WLCORE_STATE_ON, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %227

31:                                               ; preds = %19
  %32 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_get_sync(i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @pm_runtime_put_noidle(i32 %41)
  br label %227

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %217, %80, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %5, align 4
  %50 = icmp ne i32 %48, 0
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %218

53:                                               ; preds = %51
  %54 = load i32, i32* @WL1271_FLAG_IRQ_RUNNING, align 4
  %55 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 7
  %57 = call i32 @clear_bit(i32 %54, i32* %56)
  %58 = call i32 (...) @smp_mb__after_atomic()
  %59 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %60 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32 @wlcore_fw_status(%struct.wl1271* %59, %struct.TYPE_3__* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %227

67:                                               ; preds = %53
  %68 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %69 = call i32 @wlcore_hw_tx_immediate_compl(%struct.wl1271* %68)
  %70 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* @WLCORE_ALL_INTR_MASK, align 4
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %44

81:                                               ; preds = %67
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @WL1271_ACX_INTR_WATCHDOG, align 4
  %84 = and i32 %82, %83
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = call i32 @wl1271_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %227

93:                                               ; preds = %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @WL1271_ACX_SW_INTR_WATCHDOG, align 4
  %96 = and i32 %94, %95
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = call i32 @wl1271_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %101 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %102 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %101, i32 0, i32 2
  store i32 1, i32* %102, align 8
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %227

105:                                              ; preds = %93
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @WL1271_ACX_INTR_DATA, align 4
  %108 = and i32 %106, %107
  %109 = call i64 @likely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %173

111:                                              ; preds = %105
  %112 = load i32, i32* @DEBUG_IRQ, align 4
  %113 = call i32 @wl1271_debug(i32 %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %114 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %115 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = call i32 @wlcore_rx(%struct.wl1271* %114, %struct.TYPE_3__* %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %227

122:                                              ; preds = %111
  %123 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %124 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %123, i32 0, i32 6
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load i32, i32* @WL1271_FLAG_FW_TX_BUSY, align 4
  %128 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %129 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %128, i32 0, i32 7
  %130 = call i32 @test_bit(i32 %127, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %147, label %132

132:                                              ; preds = %122
  %133 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %134 = call i64 @wl1271_tx_total_queue_count(%struct.wl1271* %133)
  %135 = icmp sgt i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %138 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %137, i32 0, i32 6
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %142 = call i32 @wlcore_tx_work_locked(%struct.wl1271* %141)
  store i32 %142, i32* %3, align 4
  %143 = load i32, i32* %3, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %227

146:                                              ; preds = %136
  br label %152

147:                                              ; preds = %132, %122
  %148 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %149 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %148, i32 0, i32 6
  %150 = load i64, i64* %8, align 8
  %151 = call i32 @spin_unlock_irqrestore(i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %147, %146
  %153 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %154 = call i32 @wlcore_hw_tx_delayed_compl(%struct.wl1271* %153)
  store i32 %154, i32* %3, align 4
  %155 = load i32, i32* %3, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %227

158:                                              ; preds = %152
  %159 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %160 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %159, i32 0, i32 5
  %161 = call i32 @skb_queue_len(i32* %160)
  %162 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %163 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %162, i32 0, i32 4
  %164 = call i32 @skb_queue_len(i32* %163)
  %165 = add i32 %161, %164
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @WL1271_DEFERRED_QUEUE_LIMIT, align 4
  %168 = icmp ugt i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %158
  %170 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %171 = call i32 @wl1271_flush_deferred_work(%struct.wl1271* %170)
  br label %172

172:                                              ; preds = %169, %158
  br label %173

173:                                              ; preds = %172, %105
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* @WL1271_ACX_INTR_EVENT_A, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %173
  %179 = load i32, i32* @DEBUG_IRQ, align 4
  %180 = call i32 @wl1271_debug(i32 %179, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %181 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %182 = call i32 @wl1271_event_handle(%struct.wl1271* %181, i32 0)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %227

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %173
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @WL1271_ACX_INTR_EVENT_B, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %187
  %193 = load i32, i32* @DEBUG_IRQ, align 4
  %194 = call i32 @wl1271_debug(i32 %193, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %195 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %196 = call i32 @wl1271_event_handle(%struct.wl1271* %195, i32 1)
  store i32 %196, i32* %3, align 4
  %197 = load i32, i32* %3, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %227

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200, %187
  %202 = load i32, i32* %4, align 4
  %203 = load i32, i32* @WL1271_ACX_INTR_INIT_COMPLETE, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* @DEBUG_IRQ, align 4
  %208 = call i32 @wl1271_debug(i32 %207, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %201
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @WL1271_ACX_INTR_HW_AVAILABLE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i32, i32* @DEBUG_IRQ, align 4
  %216 = call i32 @wl1271_debug(i32 %215, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %209
  br label %44

218:                                              ; preds = %51
  %219 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %220 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @pm_runtime_mark_last_busy(i32 %221)
  %223 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %224 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @pm_runtime_put_autosuspend(i32 %225)
  br label %227

227:                                              ; preds = %218, %199, %185, %157, %145, %121, %99, %87, %66, %38, %30
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wlcore_fw_status(%struct.wl1271*, %struct.TYPE_3__*) #1

declare dso_local i32 @wlcore_hw_tx_immediate_compl(%struct.wl1271*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wlcore_rx(%struct.wl1271*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @wl1271_tx_total_queue_count(%struct.wl1271*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wlcore_tx_work_locked(%struct.wl1271*) #1

declare dso_local i32 @wlcore_hw_tx_delayed_compl(%struct.wl1271*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @wl1271_flush_deferred_work(%struct.wl1271*) #1

declare dso_local i32 @wl1271_event_handle(%struct.wl1271*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
