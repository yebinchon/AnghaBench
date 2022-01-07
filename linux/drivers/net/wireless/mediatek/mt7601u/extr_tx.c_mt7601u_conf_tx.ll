; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_mt7601u_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_tx.c_mt7601u_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i64, i64 }

@MT_EDCA_CFG_AIFSN = common dso_local global i32 0, align 4
@MT_EDCA_CFG_CWMIN = common dso_local global i32 0, align 4
@MT_EDCA_CFG_CWMAX = common dso_local global i32 0, align 4
@MT_EDCA_CFG_TXOP = common dso_local global i32 0, align 4
@MT_WMM_TXOP_MASK = common dso_local global i32 0, align 4
@MT_WMM_AIFSN = common dso_local global i32 0, align 4
@MT_WMM_AIFSN_MASK = common dso_local global i32 0, align 4
@MT_WMM_CWMIN = common dso_local global i32 0, align 4
@MT_WMM_CWMIN_MASK = common dso_local global i32 0, align 4
@MT_WMM_CWMAX = common dso_local global i32 0, align 4
@MT_WMM_CWMAX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.mt7601u_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %15, align 8
  store %struct.mt7601u_dev* %16, %struct.mt7601u_dev** %9, align 8
  store i32 5, i32* %10, align 4
  store i32 10, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @q2hwq(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fls(i64 %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %23, %4
  %29 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @fls(i64 %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 255
  %43 = zext i1 %42 to i32
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 15
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 15
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 15
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load i32, i32* @MT_EDCA_CFG_AIFSN, align 4
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @FIELD_PREP(i32 %59, i32 %62)
  %64 = load i32, i32* @MT_EDCA_CFG_CWMIN, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @FIELD_PREP(i32 %64, i32 %65)
  %67 = or i32 %63, %66
  %68 = load i32, i32* @MT_EDCA_CFG_CWMAX, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @FIELD_PREP(i32 %68, i32 %69)
  %71 = or i32 %67, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %38
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, 96
  store i32 %76, i32* %13, align 4
  br label %85

77:                                               ; preds = %38
  %78 = load i32, i32* @MT_EDCA_CFG_TXOP, align 4
  %79 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @FIELD_PREP(i32 %78, i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @MT_EDCA_CFG_AC(i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @mt76_wr(%struct.mt7601u_dev* %86, i32 %88, i32 %89)
  %91 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @MT_WMM_TXOP(i32 %92)
  %94 = call i32 @mt76_rr(%struct.mt7601u_dev* %91, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* @MT_WMM_TXOP_MASK, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @MT_WMM_TXOP_SHIFT(i32 %96)
  %98 = shl i32 %95, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %13, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %13, align 4
  %102 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @MT_WMM_TXOP_SHIFT(i32 %105)
  %107 = shl i32 %104, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @MT_WMM_TXOP(i32 %111)
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @mt76_wr(%struct.mt7601u_dev* %110, i32 %112, i32 %113)
  %115 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %116 = load i32, i32* @MT_WMM_AIFSN, align 4
  %117 = call i32 @mt76_rr(%struct.mt7601u_dev* %115, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* @MT_WMM_AIFSN_MASK, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @MT_WMM_AIFSN_SHIFT(i32 %119)
  %121 = shl i32 %118, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %13, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %13, align 4
  %125 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @MT_WMM_AIFSN_SHIFT(i32 %128)
  %130 = shl i32 %127, %129
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %134 = load i32, i32* @MT_WMM_AIFSN, align 4
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @mt76_wr(%struct.mt7601u_dev* %133, i32 %134, i32 %135)
  %137 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %138 = load i32, i32* @MT_WMM_CWMIN, align 4
  %139 = call i32 @mt76_rr(%struct.mt7601u_dev* %137, i32 %138)
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* @MT_WMM_CWMIN_MASK, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @MT_WMM_CWMIN_SHIFT(i32 %141)
  %143 = shl i32 %140, %142
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %13, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @MT_WMM_CWMIN_SHIFT(i32 %148)
  %150 = shl i32 %147, %149
  %151 = load i32, i32* %13, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %13, align 4
  %153 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %154 = load i32, i32* @MT_WMM_CWMIN, align 4
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @mt76_wr(%struct.mt7601u_dev* %153, i32 %154, i32 %155)
  %157 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %158 = load i32, i32* @MT_WMM_CWMAX, align 4
  %159 = call i32 @mt76_rr(%struct.mt7601u_dev* %157, i32 %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* @MT_WMM_CWMAX_MASK, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @MT_WMM_CWMAX_SHIFT(i32 %161)
  %163 = shl i32 %160, %162
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %13, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %12, align 4
  %169 = call i32 @MT_WMM_CWMAX_SHIFT(i32 %168)
  %170 = shl i32 %167, %169
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  %173 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %174 = load i32, i32* @MT_WMM_CWMAX, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @mt76_wr(%struct.mt7601u_dev* %173, i32 %174, i32 %175)
  ret i32 0
}

declare dso_local i32 @q2hwq(i32) #1

declare dso_local i32 @fls(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @MT_EDCA_CFG_AC(i32) #1

declare dso_local i32 @mt76_rr(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @MT_WMM_TXOP(i32) #1

declare dso_local i32 @MT_WMM_TXOP_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_AIFSN_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_CWMIN_SHIFT(i32) #1

declare dso_local i32 @MT_WMM_CWMAX_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
