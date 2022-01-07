; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_edca_choose_traffic_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_edca_choose_traffic_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }

@COMP_TURBO = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Uplink Traffic\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Balance Traffic\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Downlink\09Traffic\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32, i32, i32*)* @rtl8821ae_dm_edca_choose_traffic_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_edca_choose_traffic_idx(%struct.ieee80211_hw* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %11, align 8
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = mul nsw i32 %18, 4
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %24 = load i32, i32* @COMP_TURBO, align 4
  %25 = load i32, i32* @DBG_LOUD, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %33

27:                                               ; preds = %16
  %28 = load i32*, i32** %10, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %30 = load i32, i32* @COMP_TURBO, align 4
  %31 = load i32, i32* @DBG_LOUD, align 4
  %32 = call i32 @RT_TRACE(%struct.rtl_priv* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %21
  br label %52

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 4
  %38 = icmp sgt i32 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32*, i32** %10, align 8
  store i32 1, i32* %40, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %42 = load i32, i32* @COMP_TURBO, align 4
  %43 = load i32, i32* @DBG_LOUD, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %51

45:                                               ; preds = %34
  %46 = load i32*, i32** %10, align 8
  store i32 0, i32* %46, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %48 = load i32, i32* @COMP_TURBO, align 4
  %49 = load i32, i32* @DBG_LOUD, align 4
  %50 = call i32 @RT_TRACE(%struct.rtl_priv* %47, i32 %48, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %33
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
