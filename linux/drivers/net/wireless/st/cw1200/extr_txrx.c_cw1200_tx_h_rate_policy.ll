; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_rate_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_tx_h_rate_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, i32 }
%struct.cw1200_txinfo = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.wsm_tx = type { i32, i32, i32 }

@IEEE80211_TX_MAX_RATES = common dso_local global i32 0, align 4
@CW1200_INVALID_RATE_ID = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@WSM_HT_TX_GREENFIELD = common dso_local global i32 0, align 4
@WSM_HT_TX_MIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"[TX] TX policy renew.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, %struct.cw1200_txinfo*, %struct.wsm_tx*)* @cw1200_tx_h_rate_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_tx_h_rate_policy(%struct.cw1200_common* %0, %struct.cw1200_txinfo* %1, %struct.wsm_tx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca %struct.cw1200_txinfo*, align 8
  %7 = alloca %struct.wsm_tx*, align 8
  %8 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store %struct.cw1200_txinfo* %1, %struct.cw1200_txinfo** %6, align 8
  store %struct.wsm_tx* %2, %struct.wsm_tx** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %10 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %11 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %10, i32 0, i32 1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @IEEE80211_TX_MAX_RATES, align 4
  %17 = call i32 @tx_policy_get(%struct.cw1200_common* %9, i32* %15, i32 %16, i32* %8)
  %18 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %19 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %22 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CW1200_INVALID_RATE_ID, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %109

30:                                               ; preds = %3
  %31 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %32 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 4
  %36 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %37 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %41 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %42 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = call %struct.TYPE_8__* @cw1200_get_tx_rate(%struct.cw1200_common* %40, i32* %47)
  %49 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %50 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %49, i32 0, i32 0
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %52 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %57 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cw1200_txinfo*, %struct.cw1200_txinfo** %6, align 8
  %59 = getelementptr inbounds %struct.cw1200_txinfo, %struct.cw1200_txinfo* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %30
  %67 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %68 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %67, i32 0, i32 2
  %69 = call i64 @cw1200_ht_greenfield(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @WSM_HT_TX_GREENFIELD, align 4
  %73 = call i32 @__cpu_to_le32(i32 %72)
  %74 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %75 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %85

78:                                               ; preds = %66
  %79 = load i32, i32* @WSM_HT_TX_MIXED, align 4
  %80 = call i32 @__cpu_to_le32(i32 %79)
  %81 = load %struct.wsm_tx*, %struct.wsm_tx** %7, align 8
  %82 = getelementptr inbounds %struct.wsm_tx, %struct.wsm_tx* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %71
  br label %86

86:                                               ; preds = %85, %30
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %92 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %91)
  %93 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %94 = call i32 @cw1200_tx_queues_lock(%struct.cw1200_common* %93)
  %95 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %96 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %99 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %98, i32 0, i32 0
  %100 = call i64 @queue_work(i32 %97, i32* %99)
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %89
  %103 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %104 = call i32 @cw1200_tx_queues_unlock(%struct.cw1200_common* %103)
  %105 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %106 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %105)
  br label %107

107:                                              ; preds = %102, %89
  br label %108

108:                                              ; preds = %107, %86
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %27
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @tx_policy_get(%struct.cw1200_common*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @cw1200_get_tx_rate(%struct.cw1200_common*, i32*) #1

declare dso_local i64 @cw1200_ht_greenfield(i32*) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_tx_queues_lock(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @cw1200_tx_queues_unlock(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
