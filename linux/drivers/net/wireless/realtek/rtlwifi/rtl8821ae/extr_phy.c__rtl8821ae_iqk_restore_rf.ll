; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_restore_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_restore_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@RF_REG_NUM = common dso_local global i64 0, align 8
@RFREG_OFFSET_MASK = common dso_local global i32 0, align 4
@COMP_IQK = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RestoreRF Path A Success!!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i64*, i64*, i64)* @_rtl8821ae_iqk_restore_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_iqk_restore_rf(%struct.ieee80211_hw* %0, i32 %1, i64* %2, i64* %3, i64 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %11, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call i32 @BIT(i32 31)
  %17 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %15, i32 2092, i32 %16, i32 0)
  store i64 0, i64* %12, align 8
  br label %18

18:                                               ; preds = %35, %5
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* @RF_REG_NUM, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %12, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @RFREG_OFFSET_MASK, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @rtl_set_rfreg(%struct.ieee80211_hw* %23, i32 %24, i64 %28, i32 %29, i64 %33)
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %12, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %12, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %7, align 4
  switch i32 %39, label %45 [
    i32 128, label %40
  ]

40:                                               ; preds = %38
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %42 = load i32, i32* @COMP_IQK, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_set_rfreg(%struct.ieee80211_hw*, i32, i64, i32, i64) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
