; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tx_retry_rate = type { i32, i32* }
%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tx_status = type { i32, i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@zd_retry_rates = common dso_local global %struct.tx_retry_rate* null, align 8
@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, i32, %struct.tx_status*)* @zd_mac_tx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zd_mac_tx_status(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, i32 %2, %struct.tx_status* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_status*, align 8
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tx_retry_rate*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.tx_status* %3, %struct.tx_status** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %15)
  store %struct.ieee80211_tx_info* %16, %struct.ieee80211_tx_info** %9, align 8
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %17 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %18 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %17)
  %19 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %20 = icmp ne %struct.tx_status* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %23 = getelementptr inbounds %struct.tx_status, %struct.tx_status* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.tx_status*, %struct.tx_status** %8, align 8
  %29 = getelementptr inbounds %struct.tx_status, %struct.tx_status* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %21, %4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %38 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %39 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %49

42:                                               ; preds = %33
  %43 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %51 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp sle i32 0, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** @zd_retry_rates, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.tx_retry_rate* %61)
  %63 = icmp slt i32 %60, %62
  br label %64

64:                                               ; preds = %59, %49
  %65 = phi i1 [ false, %49 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @ZD_ASSERT(i32 %66)
  %68 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** @zd_retry_rates, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tx_retry_rate, %struct.tx_retry_rate* %68, i64 %70
  store %struct.tx_retry_rate* %71, %struct.tx_retry_rate** %14, align 8
  %72 = load i32, i32* %12, align 4
  %73 = icmp sle i32 1, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** %14, align 8
  %77 = getelementptr inbounds %struct.tx_retry_rate, %struct.tx_retry_rate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %75, %78
  br label %80

80:                                               ; preds = %74, %64
  %81 = phi i1 [ false, %64 ], [ %79, %74 ]
  %82 = zext i1 %81 to i32
  %83 = call i32 @ZD_ASSERT(i32 %82)
  %84 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** %14, align 8
  %85 = getelementptr inbounds %struct.tx_retry_rate, %struct.tx_retry_rate* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i32 %88, i32* %94, align 4
  %95 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %96 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %136, %80
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %104 = sub nsw i32 %103, 1
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %101
  %111 = phi i1 [ false, %101 ], [ %109, %106 ]
  br i1 %111, label %112, label %139

112:                                              ; preds = %110
  %113 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** %14, align 8
  %114 = getelementptr inbounds %struct.tx_retry_rate, %struct.tx_retry_rate* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 %119, i32* %127, align 4
  %128 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %129 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32 1, i32* %135, align 4
  br label %136

136:                                              ; preds = %112
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %101

139:                                              ; preds = %110
  br label %140

140:                                              ; preds = %175, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %145, %146
  br label %148

148:                                              ; preds = %144, %140
  %149 = phi i1 [ false, %140 ], [ %147, %144 ]
  br i1 %149, label %150, label %178

150:                                              ; preds = %148
  %151 = load %struct.tx_retry_rate*, %struct.tx_retry_rate** %14, align 8
  %152 = getelementptr inbounds %struct.tx_retry_rate, %struct.tx_retry_rate* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %160 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store i32 %158, i32* %166, align 4
  %167 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %168 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 1
  store i32 1, i32* %174, align 4
  br label %175

175:                                              ; preds = %150
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %140

178:                                              ; preds = %148
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  %183 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %184 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 0
  store i32 -1, i32* %190, align 4
  br label %191

191:                                              ; preds = %182, %178
  %192 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = call i32 @zd_check_signal(%struct.ieee80211_hw* %192, i32 %193)
  %195 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %196 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 8
  %198 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %200 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %198, %struct.sk_buff* %199)
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.tx_retry_rate*) #1

declare dso_local i32 @zd_check_signal(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
