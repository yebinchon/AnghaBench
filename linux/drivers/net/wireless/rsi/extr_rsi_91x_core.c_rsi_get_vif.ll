; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_get_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_core.c_rsi_get_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.rsi_hw = type { %struct.ieee80211_vif** }

@RSI_MAX_VIFS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_vif* @rsi_get_vif(%struct.rsi_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_vif*, align 8
  %4 = alloca %struct.rsi_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.rsi_hw* %0, %struct.rsi_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @RSI_MAX_VIFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %8
  %13 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %14 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, i64 %17
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %18, align 8
  store %struct.ieee80211_vif* %19, %struct.ieee80211_vif** %6, align 8
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = icmp ne %struct.ieee80211_vif* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %34

23:                                               ; preds = %12
  %24 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcmp(i32 %26, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_vif* %32, %struct.ieee80211_vif** %3, align 8
  br label %38

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %8

37:                                               ; preds = %8
  store %struct.ieee80211_vif* null, %struct.ieee80211_vif** %3, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %3, align 8
  ret %struct.ieee80211_vif* %39
}

declare dso_local i32 @memcmp(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
