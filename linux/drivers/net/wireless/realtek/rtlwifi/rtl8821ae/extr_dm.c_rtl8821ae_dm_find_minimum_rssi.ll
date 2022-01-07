; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_find_minimum_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_find_minimum_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dig_t = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"rtl8821ae: Not connected to any AP\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@COMP_BB_POWERSAVING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", align 1
@COMP_DIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8821ae_dm_find_minimum_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8821ae_dm_find_minimum_rssi(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.dig_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %8, i32 0, i32 1
  store %struct.dig_t* %9, %struct.dig_t** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %5, align 8
  %12 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MAC80211_LINKED, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %25 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %23, %17, %1
  %28 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAC80211_LINKED, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %27
  %34 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %35 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39, %33
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %51 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %53 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %54 = load i32, i32* @DBG_LOUD, align 4
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @RT_TRACE(%struct.rtl_priv* %52, i32 %53, i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  br label %74

60:                                               ; preds = %39
  %61 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %62 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %66 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %68 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %69 = load i32, i32* @DBG_LOUD, align 4
  %70 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %71 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @RT_TRACE(%struct.rtl_priv* %67, i32 %68, i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %74

74:                                               ; preds = %60, %45
  br label %89

75:                                               ; preds = %27
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %81 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %83 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %84 = load i32, i32* @DBG_LOUD, align 4
  %85 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %86 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @RT_TRACE(%struct.rtl_priv* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %75, %74
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %91 = load i32, i32* @COMP_DIG, align 4
  %92 = load i32, i32* @DBG_LOUD, align 4
  %93 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %94 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @RT_TRACE(%struct.rtl_priv* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %95)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
