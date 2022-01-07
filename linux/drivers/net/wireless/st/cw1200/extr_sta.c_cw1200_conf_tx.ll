; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i64, %struct.cw1200_common* }
%struct.cw1200_common = type { i64, i64, i32, i32, %struct.TYPE_3__, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@CW1200_JOIN_STATUS_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca %struct.cw1200_common*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 1
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %13, align 8
  store %struct.cw1200_common* %14, %struct.cw1200_common** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %16 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %115

23:                                               ; preds = %4
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %25 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 7
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @WSM_TX_QUEUE_SET(%struct.TYPE_4__* %30, i64 %31, i32 0, i32 0, i32 0)
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %34 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %35 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @wsm_set_tx_queue_params(%struct.cw1200_common* %33, i32* %39, i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %23
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %119

47:                                               ; preds = %23
  %48 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %49 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %48, i32 0, i32 6
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @WSM_EDCA_SET(i32* %49, i64 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 200, i32 %65)
  %67 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %69 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %68, i32 0, i32 6
  %70 = call i32 @wsm_set_edca_params(%struct.cw1200_common* %67, i32* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %47
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %10, align 4
  br label %119

76:                                               ; preds = %47
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %78 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %76
  %83 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %85 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %84, i32 0, i32 6
  %86 = call i32 @cw1200_set_uapsd_param(%struct.cw1200_common* %83, i32* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %82
  %90 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %91 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %96 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CW1200_JOIN_STATUS_STA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %103 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @le16_to_cpu(i32 %105)
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %100
  %109 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %110 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %111 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %110, i32 0, i32 3
  %112 = call i32 @cw1200_set_pm(%struct.cw1200_common* %109, i32* %111)
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %108, %100, %94, %89, %82
  br label %114

114:                                              ; preds = %113, %76
  br label %118

115:                                              ; preds = %4
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %115, %114
  br label %119

119:                                              ; preds = %118, %73, %44
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 2
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @WSM_TX_QUEUE_SET(%struct.TYPE_4__*, i64, i32, i32, i32) #1

declare dso_local i32 @wsm_set_tx_queue_params(%struct.cw1200_common*, i32*, i64) #1

declare dso_local i32 @WSM_EDCA_SET(i32*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wsm_set_edca_params(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_set_uapsd_param(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @cw1200_set_pm(%struct.cw1200_common*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
