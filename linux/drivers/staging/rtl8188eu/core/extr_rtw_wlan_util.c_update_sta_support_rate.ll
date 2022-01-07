; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_sta_support_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_sta_support_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ndis_802_11_var_ie = type { i32 }

@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@NDIS_802_11_LENGTH_RATES_EX = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @update_sta_support_rate(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ndis_802_11_var_ie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlme_ext_priv*, align 8
  %14 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %13, align 8
  %17 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %13, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %17, i32 0, i32 0
  store %struct.mlme_ext_info* %18, %struct.mlme_ext_info** %14, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @rtw_get_ie(i32* %19, i32 %20, i32* %10, i32 %21)
  %23 = inttoptr i64 %22 to %struct.ndis_802_11_var_ie*
  store %struct.ndis_802_11_var_ie* %23, %struct.ndis_802_11_var_ie** %11, align 8
  %24 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %11, align 8
  %25 = icmp ne %struct.ndis_802_11_var_ie* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @_FAIL, align 4
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @NDIS_802_11_LENGTH_RATES_EX, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @_FAIL, align 4
  store i32 %33, i32* %5, align 4
  br label %83

34:                                               ; preds = %28
  %35 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %14, align 8
  %36 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %11, align 8
  %44 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i64 %42, i32 %45, i32 %46)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @rtw_get_ie(i32* %49, i32 %50, i32* %10, i32 %51)
  %53 = inttoptr i64 %52 to %struct.ndis_802_11_var_ie*
  store %struct.ndis_802_11_var_ie* %53, %struct.ndis_802_11_var_ie** %11, align 8
  %54 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %11, align 8
  %55 = icmp ne %struct.ndis_802_11_var_ie* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %34
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add i32 %57, %58
  %60 = load i32, i32* @NDIS_802_11_LENGTH_RATES_EX, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @_FAIL, align 4
  store i32 %63, i32* %5, align 4
  br label %83

64:                                               ; preds = %56
  %65 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %14, align 8
  %66 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %11, align 8
  %77 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @memcpy(i64 %75, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %64, %34
  %82 = load i32, i32* @_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %62, %32, %26
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i64 @rtw_get_ie(i32*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
