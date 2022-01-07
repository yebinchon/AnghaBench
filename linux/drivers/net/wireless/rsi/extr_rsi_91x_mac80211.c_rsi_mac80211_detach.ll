; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_mac80211_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i32, %struct.ieee80211_supported_band*, %struct.ieee80211_hw* }
%struct.ieee80211_supported_band = type { i32 }
%struct.ieee80211_hw = type { i32 }

@NUM_NL80211_BANDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_mac80211_detach(%struct.rsi_hw* %0) #0 {
  %2 = alloca %struct.rsi_hw*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_supported_band*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %2, align 8
  %6 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %7 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %6, i32 0, i32 2
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %7, align 8
  store %struct.ieee80211_hw* %8, %struct.ieee80211_hw** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = icmp ne %struct.ieee80211_hw* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %12)
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %14)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = call i32 @ieee80211_free_hw(%struct.ieee80211_hw* %16)
  %18 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %19 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %18, i32 0, i32 2
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NUM_NL80211_BANDS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %27 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %26, i32 0, i32 1
  %28 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %28, i64 %30
  store %struct.ieee80211_supported_band* %31, %struct.ieee80211_supported_band** %5, align 8
  %32 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %21

39:                                               ; preds = %21
  ret void
}

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_free_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
