; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c__rtl92ee_dm_ra_state_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c__rtl92ee_dm_ra_state_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rate_adaptive }
%struct.rate_adaptive = type { i64, i64 }

@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wrong rssi level setting %d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i64, i64*)* @_rtl92ee_dm_ra_state_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl92ee_dm_ra_state_check(%struct.ieee80211_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rtl_priv*, align 8
  %9 = alloca %struct.rate_adaptive*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  store %struct.rtl_priv* %15, %struct.rtl_priv** %8, align 8
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 0
  store %struct.rate_adaptive* %17, %struct.rate_adaptive** %9, align 8
  store i64 5, i64* %10, align 8
  %18 = load %struct.rate_adaptive*, %struct.rate_adaptive** %9, align 8
  %19 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.rate_adaptive*, %struct.rate_adaptive** %9, align 8
  %22 = getelementptr inbounds %struct.rate_adaptive, %struct.rate_adaptive* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  switch i64 %25, label %35 [
    i64 130, label %26
    i64 131, label %26
    i64 128, label %27
    i64 129, label %30
  ]

26:                                               ; preds = %3, %3
  br label %42

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  %29 = add nsw i64 %28, 5
  store i64 %29, i64* %11, align 8
  br label %42

30:                                               ; preds = %3
  %31 = load i64, i64* %11, align 8
  %32 = add nsw i64 %31, 5
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add nsw i64 %33, 5
  store i64 %34, i64* %12, align 8
  br label %42

35:                                               ; preds = %3
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %8, align 8
  %37 = load i32, i32* @COMP_RATR, align 4
  %38 = load i32, i32* @DBG_DMESG, align 4
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %35, %30, %27, %26
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i64 131, i64* %13, align 8
  br label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 128, i64* %13, align 8
  br label %53

52:                                               ; preds = %47
  store i64 129, i64* %13, align 8
  br label %53

53:                                               ; preds = %52, %51
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %7, align 8
  store i64 %60, i64* %61, align 8
  store i32 1, i32* %4, align 4
  br label %63

62:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
