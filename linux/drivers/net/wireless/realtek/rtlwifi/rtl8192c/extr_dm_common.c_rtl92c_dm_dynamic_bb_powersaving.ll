; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_dynamic_bb_powersaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_dynamic_bb_powersaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.ps_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ps_t = type { i64 }
%struct.rtl_mac = type { i64, i64 }
%struct.rtl_hal = type { i32 }

@MAC80211_NOLINK = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl92c_dm_dynamic_bb_powersaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92c_dm_dynamic_bb_powersaving(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.ps_t*, align 8
  %5 = alloca %struct.rtl_mac*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 1
  store %struct.ps_t* %10, %struct.ps_t** %4, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %6, align 8
  %17 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %18 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAC80211_NOLINK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %30 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = load i32, i32* @DBG_LOUD, align 4
  %33 = load i32, i32* @DBG_LOUD, align 4
  %34 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %31, i32 %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %22, %1
  %36 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %37 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAC80211_LINKED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %35
  %42 = load %struct.rtl_mac*, %struct.rtl_mac** %5, align 8
  %43 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %53 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = load i32, i32* @DBG_LOUD, align 4
  %57 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %58 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %59)
  br label %75

61:                                               ; preds = %41
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %67 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %69 = load i32, i32* @DBG_LOUD, align 4
  %70 = load i32, i32* @DBG_LOUD, align 4
  %71 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %72 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %68, i32 %69, i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  br label %75

75:                                               ; preds = %61, %47
  br label %90

76:                                               ; preds = %35
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %82 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = load i32, i32* @DBG_LOUD, align 4
  %85 = load i32, i32* @DBG_LOUD, align 4
  %86 = load %struct.ps_t*, %struct.ps_t** %4, align 8
  %87 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %83, i32 %84, i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %76, %75
  %91 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %92 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_92C_SERIAL(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %100

97:                                               ; preds = %90
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %99 = call i32 @rtl92c_dm_rf_saving(%struct.ieee80211_hw* %98, i32 0)
  br label %100

100:                                              ; preds = %97, %96
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i64 @IS_92C_SERIAL(i32) #1

declare dso_local i32 @rtl92c_dm_rf_saving(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
