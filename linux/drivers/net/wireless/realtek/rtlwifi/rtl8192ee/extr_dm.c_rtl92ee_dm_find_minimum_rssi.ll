; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_find_minimum_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_dm.c_rtl92ee_dm_find_minimum_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.dig_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dig_t = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_LINKED = common dso_local global i64 0, align 8
@COMP_BB_POWERSAVING = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"STA Default Port PWDB = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"AP Ext Port or disconnect PWDB = 0x%x\0A\00", align 1
@COMP_DIG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"MinUndecoratedPWDBForDM =%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92ee_dm_find_minimum_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_dm_find_minimum_rssi(%struct.ieee80211_hw* %0) #0 {
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
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %25 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23, %17, %1
  %31 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MAC80211_LINKED, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %30
  %37 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %38 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42, %36
  %49 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %50 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %54 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %56 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %57 = load i32, i32* @DBG_LOUD, align 4
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %77

63:                                               ; preds = %42
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %69 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %71 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %72 = load i32, i32* @DBG_LOUD, align 4
  %73 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %74 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %63, %48
  br label %92

78:                                               ; preds = %30
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %84 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %86 = load i32, i32* @COMP_BB_POWERSAVING, align 4
  %87 = load i32, i32* @DBG_LOUD, align 4
  %88 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %89 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %78, %77
  %93 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %94 = load i32, i32* @COMP_DIG, align 4
  %95 = load i32, i32* @DBG_LOUD, align 4
  %96 = load %struct.dig_t*, %struct.dig_t** %4, align 8
  %97 = getelementptr inbounds %struct.dig_t, %struct.dig_t* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %93, i32 %94, i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
