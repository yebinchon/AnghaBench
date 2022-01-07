; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_dynamic_bb_powersaving.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_dynamic_bb_powersaving.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__, %struct.ps_t }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ps_t = type { i64 }
%struct.rtl_mac = type { i64, i64 }

@MAC80211_NOLINK = common dso_local global i64 0, align 8
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Not connected to any\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"AP Client PWDB = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"STA Default Port PWDB = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"AP Ext Port PWDB = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl8723e_dm_dynamic_bb_powersaving to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_dm_dynamic_bb_powersaving(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.ps_t*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %6)
  store %struct.rtl_priv* %7, %struct.rtl_priv** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %9)
  store %struct.rtl_mac* %10, %struct.rtl_mac** %4, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 1
  store %struct.ps_t* %12, %struct.ps_t** %5, align 8
  %13 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %14 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAC80211_NOLINK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %26 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = load i32, i32* @DBG_LOUD, align 4
  %29 = load i32, i32* @DBG_LOUD, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %24, %18, %1
  %32 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAC80211_LINKED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %31
  %38 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %49 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %51 = load i32, i32* @DBG_LOUD, align 4
  %52 = load i32, i32* @DBG_LOUD, align 4
  %53 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %54 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  br label %71

57:                                               ; preds = %37
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %63 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i32, i32* @DBG_LOUD, align 4
  %66 = load i32, i32* @DBG_LOUD, align 4
  %67 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %68 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %57, %43
  br label %86

72:                                               ; preds = %31
  %73 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %74 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %78 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = load i32, i32* @DBG_LOUD, align 4
  %81 = load i32, i32* @DBG_LOUD, align 4
  %82 = load %struct.ps_t*, %struct.ps_t** %5, align 8
  %83 = getelementptr inbounds %struct.ps_t, %struct.ps_t* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %79, i32 %80, i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %72, %71
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %88 = call i32 @rtl8723e_dm_rf_saving(%struct.ieee80211_hw* %87, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl8723e_dm_rf_saving(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
