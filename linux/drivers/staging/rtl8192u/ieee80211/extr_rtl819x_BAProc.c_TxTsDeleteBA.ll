; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_BAProc.c_TxTsDeleteBA.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_BAProc.c_TxTsDeleteBA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.tx_ts_record = type { %struct.ba_record, %struct.ba_record }
%struct.ba_record = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_device*, %struct.tx_ts_record*)* @TxTsDeleteBA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TxTsDeleteBA(%struct.ieee80211_device* %0, %struct.tx_ts_record* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.tx_ts_record*, align 8
  %5 = alloca %struct.ba_record*, align 8
  %6 = alloca %struct.ba_record*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.tx_ts_record* %1, %struct.tx_ts_record** %4, align 8
  %8 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %9 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %8, i32 0, i32 1
  store %struct.ba_record* %9, %struct.ba_record** %5, align 8
  %10 = load %struct.tx_ts_record*, %struct.tx_ts_record** %4, align 8
  %11 = getelementptr inbounds %struct.tx_ts_record, %struct.tx_ts_record* %10, i32 0, i32 0
  store %struct.ba_record* %11, %struct.ba_record** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ba_record*, %struct.ba_record** %6, align 8
  %13 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %18 = load %struct.ba_record*, %struct.ba_record** %6, align 8
  %19 = call i32 @DeActivateBAEntry(%struct.ieee80211_device* %17, %struct.ba_record* %18)
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load %struct.ba_record*, %struct.ba_record** %5, align 8
  %22 = getelementptr inbounds %struct.ba_record, %struct.ba_record* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %27 = load %struct.ba_record*, %struct.ba_record** %5, align 8
  %28 = call i32 @DeActivateBAEntry(%struct.ieee80211_device* %26, %struct.ba_record* %27)
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @DeActivateBAEntry(%struct.ieee80211_device*, %struct.ba_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
