; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_init_txpower_tracking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_init_txpower_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_dm = type { i32, i32, i32, i32, i32, i32*, i32*, i64*, i64*, i64* }

@RF90_PATH_A = common dso_local global i64 0, align 8
@MAX_RF_PATH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_init_txpower_tracking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_init_txpower_tracking(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_dm*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = call %struct.rtl_dm* @rtl_dm(%struct.rtl_priv* %8)
  store %struct.rtl_dm* %9, %struct.rtl_dm** %4, align 8
  %10 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %11 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %13 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %12, i32 0, i32 1
  store i32 30, i32* %13, align 4
  %14 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %14, i32 0, i32 2
  store i32 20, i32* %15, align 8
  %16 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %17 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %20 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %22 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %25 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* @RF90_PATH_A, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %63, %1
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MAX_RF_PATH, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %27
  %32 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %41 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %42, i32* %47, align 4
  %48 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %49 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %48, i32 0, i32 9
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 0, i64* %52, align 8
  %53 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %54 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %53, i32 0, i32 8
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 0, i64* %57, align 8
  %58 = load %struct.rtl_dm*, %struct.rtl_dm** %4, align 8
  %59 = getelementptr inbounds %struct.rtl_dm, %struct.rtl_dm* %58, i32 0, i32 7
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %31
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %27

66:                                               ; preds = %27
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_dm* @rtl_dm(%struct.rtl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
