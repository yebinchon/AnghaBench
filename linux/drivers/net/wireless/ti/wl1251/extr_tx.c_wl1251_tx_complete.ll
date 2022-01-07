; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_tx.c_wl1251_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.tx_result = type { i32, i32 }

@FW_TX_CMPLT_BLOCK_SIZE = common dso_local global i32 0, align 4
@WL1251_STATE_ON = common dso_local global i64 0, align 8
@DEBUG_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tx_complete: reschedule tx_work\00", align 1
@WL1251_TX_QUEUE_LOW_WATERMARK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"tx_complete: waking queues\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wl1251_tx_complete(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tx_result*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.tx_result, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %17 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WL1251_STATE_ON, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %219

25:                                               ; preds = %1
  %26 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %27 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = mul nuw i64 8, %13
  %33 = trunc i64 %32 to i32
  %34 = call i32 @wl1251_mem_read(%struct.wl1251* %26, i64 %31, %struct.tx_result* %15, i32 %33)
  %35 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %36 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %72, %25
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ARRAY_SIZE(%struct.tx_result* %15)
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %15, i64 %44
  store %struct.tx_result* %45, %struct.tx_result** %9, align 8
  %46 = load %struct.tx_result*, %struct.tx_result** %9, align 8
  %47 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %70

50:                                               ; preds = %42
  %51 = load %struct.tx_result*, %struct.tx_result** %9, align 8
  %52 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %70

55:                                               ; preds = %50
  %56 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %57 = load %struct.tx_result*, %struct.tx_result** %9, align 8
  %58 = call i32 @wl1251_tx_packet_cb(%struct.wl1251* %56, %struct.tx_result* %57)
  %59 = load %struct.tx_result*, %struct.tx_result** %9, align 8
  %60 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %59, i32 0, i32 0
  store i32 0, i32* %60, align 4
  %61 = load %struct.tx_result*, %struct.tx_result** %9, align 8
  %62 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %61, i32 0, i32 1
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %71

70:                                               ; preds = %50, %42
  br label %75

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %38

75:                                               ; preds = %70, %38
  %76 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 7
  %78 = call i32 @skb_queue_len(i32* %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %75
  %82 = load i32, i32* %6, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32, i32* @DEBUG_TX, align 4
  %86 = call i32 @wl1251_debug(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %88 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %91 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %90, i32 0, i32 6
  %92 = call i32 @ieee80211_queue_work(i32 %89, i32* %91)
  br label %93

93:                                               ; preds = %84, %81, %75
  %94 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %95 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %93
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @WL1251_TX_QUEUE_LOW_WATERMARK, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* @DEBUG_TX, align 4
  %104 = call i32 @wl1251_debug(i32 %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %105 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %106 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %105, i32 0, i32 4
  %107 = load i64, i64* %10, align 8
  %108 = call i32 @spin_lock_irqsave(i32* %106, i64 %107)
  %109 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %110 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ieee80211_wake_queues(i32 %111)
  %113 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %114 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %113, i32 0, i32 2
  store i32 0, i32* %114, align 4
  %115 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %116 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %115, i32 0, i32 4
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %102, %98, %93
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %215

122:                                              ; preds = %119
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %125 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp sgt i32 %123, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %122
  %129 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %130 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %131 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %130, i32 0, i32 3
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %136 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 8
  %140 = add i64 %134, %139
  %141 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %142 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %15, i64 %144
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @wl1251_mem_write(%struct.wl1251* %129, i64 %140, %struct.tx_result* %145, i32 %149)
  br label %214

151:                                              ; preds = %122
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %154 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %201

157:                                              ; preds = %151
  %158 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %159 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %160 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %165 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 8
  %169 = add i64 %163, %168
  %170 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %171 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.tx_result, %struct.tx_result* %15, i64 %173
  %175 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %176 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %177 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = sub nsw i32 %175, %178
  %180 = sext i32 %179 to i64
  %181 = mul i64 %180, 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @wl1251_mem_write(%struct.wl1251* %158, i64 %169, %struct.tx_result* %174, i32 %182)
  %184 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %185 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %186 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %185, i32 0, i32 3
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %194 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %192, %195
  %197 = sext i32 %196 to i64
  %198 = mul i64 %197, 8
  %199 = trunc i64 %198 to i32
  %200 = call i32 @wl1251_mem_write(%struct.wl1251* %184, i64 %189, %struct.tx_result* %15, i32 %199)
  br label %213

201:                                              ; preds = %151
  %202 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %203 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %204 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %203, i32 0, i32 3
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* @FW_TX_CMPLT_BLOCK_SIZE, align 4
  %209 = sext i32 %208 to i64
  %210 = mul i64 %209, 8
  %211 = trunc i64 %210 to i32
  %212 = call i32 @wl1251_mem_write(%struct.wl1251* %202, i64 %207, %struct.tx_result* %15, i32 %211)
  br label %213

213:                                              ; preds = %201, %157
  br label %214

214:                                              ; preds = %213, %128
  br label %215

215:                                              ; preds = %214, %119
  %216 = load i32, i32* %4, align 4
  %217 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %218 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  store i32 0, i32* %11, align 4
  br label %219

219:                                              ; preds = %215, %24
  %220 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %11, align 4
  switch i32 %221, label %223 [
    i32 0, label %222
    i32 1, label %222
  ]

222:                                              ; preds = %219, %219
  ret void

223:                                              ; preds = %219
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i64, %struct.tx_result*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.tx_result*) #2

declare dso_local i32 @wl1251_tx_packet_cb(%struct.wl1251*, %struct.tx_result*) #2

declare dso_local i32 @skb_queue_len(i32*) #2

declare dso_local i32 @wl1251_debug(i32, i8*) #2

declare dso_local i32 @ieee80211_queue_work(i32, i32*) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @ieee80211_wake_queues(i32) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

declare dso_local i32 @wl1251_mem_write(%struct.wl1251*, i64, %struct.tx_result*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
