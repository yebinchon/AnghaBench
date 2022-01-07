; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_inq_page_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hal_btc.c_rtl8723e_dm_bt_inq_page_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@hal_coex_8723 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BT_COEX_STATE_BT_INQ_PAGE = common dso_local global i32 0, align 4
@COMP_BT_COEXIST = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[BTCoex], BT Inquiry/page is started at time : 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"[BTCoex], BT Inquiry/page started time : 0x%x, cur_time : 0x%x\0A\00", align 1
@HZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"[BTCoex], BT Inquiry/page >= 10sec!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_bt_inq_page_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_bt_inq_page_monitor(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 1), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* @BT_COEX_STATE_BT_INQ_PAGE, align 4
  %15 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %14
  store i32 %19, i32* %17, align 4
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = load i32, i32* @COMP_BT_COEXIST, align 4
  %23 = load i32, i32* @DBG_DMESG, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %25 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %21, i32 %22, i32 %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %13, %10
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = load i32, i32* @COMP_BT_COEXIST, align 4
  %30 = load i32, i32* @DBG_DMESG, align 4
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %28, i32 %29, i32 %30, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %31, i64 %32)
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i64, i64* @HZ, align 8
  %41 = sdiv i64 %39, %40
  %42 = icmp sge i64 %41, 10
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @COMP_BT_COEXIST, align 4
  %46 = load i32, i32* @DBG_DMESG, align 4
  %47 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %44, i32 %45, i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @hal_coex_8723, i32 0, i32 0), align 8
  %48 = load i32, i32* @BT_COEX_STATE_BT_INQ_PAGE, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %43, %36
  br label %56

56:                                               ; preds = %55, %27
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
