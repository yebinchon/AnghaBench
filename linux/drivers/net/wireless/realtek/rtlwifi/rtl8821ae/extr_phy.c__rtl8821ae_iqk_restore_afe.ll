; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_restore_afe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_iqk_restore_afe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_IQK = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RestoreAFE Success!!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i64*, i64)* @_rtl8821ae_iqk_restore_afe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_iqk_restore_afe(%struct.ieee80211_hw* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %10, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = call i32 @BIT(i32 31)
  %15 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %13, i32 2092, i32 %14, i32 0)
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %33, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @rtl_write_dword(%struct.rtl_priv* %21, i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %20
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %38 = call i32 @BIT(i32 31)
  %39 = call i32 @rtl_set_bbreg(%struct.ieee80211_hw* %37, i32 2092, i32 %38, i32 1)
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %41 = call i32 @rtl_write_dword(%struct.rtl_priv* %40, i32 3200, i32 0)
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %43 = call i32 @rtl_write_dword(%struct.rtl_priv* %42, i32 3204, i32 0)
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %45 = call i32 @rtl_write_dword(%struct.rtl_priv* %44, i32 3208, i32 0)
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %47 = call i32 @rtl_write_dword(%struct.rtl_priv* %46, i32 3212, i32 1006632960)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %49 = call i32 @rtl_write_dword(%struct.rtl_priv* %48, i32 3216, i32 128)
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %51 = call i32 @rtl_write_dword(%struct.rtl_priv* %50, i32 3220, i32 0)
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %53 = call i32 @rtl_write_dword(%struct.rtl_priv* %52, i32 3268, i32 537133056)
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %55 = call i32 @rtl_write_dword(%struct.rtl_priv* %54, i32 3272, i32 536870912)
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %57 = call i32 @rtl_write_dword(%struct.rtl_priv* %56, i32 3256, i32 0)
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %10, align 8
  %59 = load i32, i32* @COMP_IQK, align 4
  %60 = load i32, i32* @DBG_LOUD, align 4
  %61 = call i32 @RT_TRACE(%struct.rtl_priv* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_set_bbreg(%struct.ieee80211_hw*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
