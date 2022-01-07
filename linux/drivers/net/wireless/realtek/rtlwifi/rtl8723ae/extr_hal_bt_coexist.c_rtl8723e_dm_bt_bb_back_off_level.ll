; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_bb_back_off_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_bt_coexist.c_rtl8723e_dm_bt_bb_back_off_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BT_BB_BACKOFF_OFF = common dso_local global i64 0, align 8
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"[BT]BBBackOffLevel Off!\0A\00", align 1
@BT_BB_BACKOFF_ON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"[BT]BBBackOffLevel On!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_bt_bb_back_off_level(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @BT_BB_BACKOFF_OFF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_BT_COEXIST, align 4
  %14 = load i32, i32* @DBG_TRACE, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %17 = call i32 @rtl_write_dword(%struct.rtl_priv* %16, i32 3076, i32 60839441)
  br label %33

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @BT_BB_BACKOFF_ON, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = load i32, i32* @COMP_BT_COEXIST, align 4
  %25 = load i32, i32* @DBG_TRACE, align 4
  %26 = call i32 @RT_TRACE(%struct.rtl_priv* %23, i32 %24, i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %28 = call i32 @rtl_write_dword(%struct.rtl_priv* %27, i32 3076, i32 60847633)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %22, %18
  br label %33

33:                                               ; preds = %32, %11
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
