; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_HalDmWatchDog_in_LPS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_HalDmWatchDog_in_LPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.sta_priv, %struct.mlme_priv }
%struct.sta_priv = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_7__, %struct.dm_priv }
%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dm_priv = type { i64, i64 }
%struct.sta_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ODM_CMNINFO_LINK = common dso_local global i32 0, align 4
@ODM_BB_RSSI_MONITOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"CurIGValue =%d, EntryMinUndecoratedSmoothedPWDB = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_HalDmWatchDog_in_LPS(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hal_com_data*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.dm_priv*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.sta_priv*, align 8
  %10 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %11)
  store %struct.hal_com_data* %12, %struct.hal_com_data** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 2
  store %struct.mlme_priv* %14, %struct.mlme_priv** %5, align 8
  %15 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %16 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %15, i32 0, i32 1
  store %struct.dm_priv* %16, %struct.dm_priv** %6, align 8
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 0
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %8, align 8
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.sta_priv* %22, %struct.sta_priv** %9, align 8
  store %struct.sta_info* null, %struct.sta_info** %10, align 8
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %111

28:                                               ; preds = %1
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = call i64 @rtw_linked_check(%struct.adapter* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load %struct.hal_com_data*, %struct.hal_com_data** %4, align 8
  %35 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %34, i32 0, i32 0
  %36 = load i32, i32* @ODM_CMNINFO_LINK, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ODM_CmnInfoUpdate(%struct.TYPE_7__* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %111

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ODM_BB_RSSI_MONITOR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %111

50:                                               ; preds = %42
  %51 = load %struct.sta_priv*, %struct.sta_priv** %9, align 8
  %52 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %53 = call i32 @get_bssid(%struct.mlme_priv* %52)
  %54 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %51, i32 %53)
  store %struct.sta_info* %54, %struct.sta_info** %10, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %56 = icmp ne %struct.sta_info* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  br label %111

58:                                               ; preds = %50
  %59 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %64 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %69 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @DBG_871X(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %70)
  %72 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %73 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sle i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  br label %111

77:                                               ; preds = %58
  %78 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %79 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %82 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.dm_priv*, %struct.dm_priv** %6, align 8
  %84 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 5
  %96 = icmp sgt i64 %91, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %77
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %104, 5
  %106 = icmp slt i64 %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97, %77
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = call i32 @rtw_dm_in_lps_wk_cmd(%struct.adapter* %108)
  br label %110

110:                                              ; preds = %107, %97
  br label %111

111:                                              ; preds = %110, %76, %57, %49, %41, %27
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @rtw_linked_check(%struct.adapter*) #1

declare dso_local i32 @ODM_CmnInfoUpdate(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32 @DBG_871X(i8*, i32, i64) #1

declare dso_local i32 @rtw_dm_in_lps_wk_cmd(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
