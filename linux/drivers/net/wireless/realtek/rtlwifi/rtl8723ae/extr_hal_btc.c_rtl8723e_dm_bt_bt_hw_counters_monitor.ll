; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_hw_counters_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_bt_hw_counters_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@REG_HIGH_PRIORITY_TXRX = common dso_local global i32 0, align 4
@REG_LOW_PRIORITY_TXRX = common dso_local global i32 0, align 4
@MASKLWORD = common dso_local global i32 0, align 4
@MASKHWORD = common dso_local global i32 0, align 4
@hal_coex_8723 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"High Priority Tx/Rx (reg 0x%x)=%x(%d)/%x(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Low Priority Tx/Rx (reg 0x%x)=%x(%d)/%x(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_bt_hw_counters_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_bt_hw_counters_monitor(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  store %struct.rtl_priv* %12, %struct.rtl_priv** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @REG_HIGH_PRIORITY_TXRX, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @REG_LOW_PRIORITY_TXRX, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rtl_read_dword(%struct.rtl_priv* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MASKLWORD, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MASKHWORD, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 16
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @rtl_read_dword(%struct.rtl_priv* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MASKLWORD, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MASKHWORD, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %10, align 4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %65

40:                                               ; preds = %1
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %42 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = srem i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = srem i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = srem i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = srem i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %40, %1
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 2), align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 3), align 4
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @COMP_BT_COEXIST, align 4
  %72 = load i32, i32* @DBG_DMESG, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @COMP_BT_COEXIST, align 4
  %81 = load i32, i32* @DBG_DMESG, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 4
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
