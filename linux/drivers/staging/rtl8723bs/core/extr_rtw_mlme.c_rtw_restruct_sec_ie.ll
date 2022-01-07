; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restruct_sec_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restruct_sec_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.security_priv, %struct.mlme_priv }
%struct.security_priv = type { i64, i64*, i32, i64* }
%struct.mlme_priv = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"+rtw_restruct_sec_ie: ndisauthmode =%d\0A\00", align 1
@Ndis802_11AuthModeWPA = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPAPSK = common dso_local global i64 0, align 8
@_WPA_IE_ID_ = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPA2 = common dso_local global i64 0, align 8
@Ndis802_11AuthModeWPA2PSK = common dso_local global i64 0, align 8
@_WPA2_IE_ID_ = common dso_local global i64 0, align 8
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_restruct_sec_ie(%struct.adapter* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mlme_priv*, align 8
  %14 = alloca %struct.security_priv*, align 8
  %15 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.mlme_priv* %17, %struct.mlme_priv** %13, align 8
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  store %struct.security_priv* %19, %struct.security_priv** %14, align 8
  %20 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %21 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %24 = load i32, i32* @_drv_notice_, align 4
  %25 = load i64, i64* %15, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @RT_TRACE(i32 %23, i32 %24, i8* %26)
  %28 = load i64*, i64** %8, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = call i32 @memcpy(i64* %28, i64* %29, i32 12)
  store i64 12, i64* %11, align 8
  %31 = load i64, i64* %15, align 8
  %32 = load i64, i64* @Ndis802_11AuthModeWPA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @Ndis802_11AuthModeWPAPSK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %4
  %39 = load i64, i64* @_WPA_IE_ID_, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @Ndis802_11AuthModeWPA2, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %15, align 8
  %46 = load i64, i64* @Ndis802_11AuthModeWPA2PSK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44, %40
  %49 = load i64, i64* @_WPA2_IE_ID_, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %44
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %52 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %53 = call i64 @check_fwstate(%struct.mlme_priv* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load i64*, i64** %8, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %60 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %63 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i64* %58, i64* %61, i32 %64)
  %66 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %67 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %11, align 8
  %71 = add nsw i64 %70, %69
  store i64 %71, i64* %11, align 8
  br label %112

72:                                               ; preds = %50
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @_WPA_IE_ID_, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @_WPA2_IE_ID_, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %111

80:                                               ; preds = %76, %72
  %81 = load i64*, i64** %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %85 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %84, i32 0, i32 3
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %89 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = getelementptr inbounds i64, i64* %90, i64 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 2
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i64* %83, i64* %87, i32 %94)
  %96 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %97 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %96, i32 0, i32 3
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 2
  %102 = load i64, i64* %11, align 8
  %103 = add nsw i64 %102, %101
  store i64 %103, i64* %11, align 8
  %104 = load %struct.adapter*, %struct.adapter** %6, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.security_priv*, %struct.security_priv** %14, align 8
  %107 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %106, i32 0, i32 3
  %108 = load i64*, i64** %107, align 8
  %109 = bitcast i64* %108 to i32*
  %110 = call i32 @rtw_report_sec_ie(%struct.adapter* %104, i64 %105, i32* %109)
  br label %111

111:                                              ; preds = %80, %76
  br label %112

112:                                              ; preds = %111, %55
  %113 = load %struct.adapter*, %struct.adapter** %6, align 8
  %114 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %115 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SecIsInPMKIDList(%struct.adapter* %113, i32 %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %112
  %121 = load i64, i64* %11, align 8
  store i64 %121, i64* %5, align 8
  br label %135

122:                                              ; preds = %112
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* @_WPA2_IE_ID_, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.adapter*, %struct.adapter** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = load i64*, i64** %8, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i64 @rtw_append_pmkid(%struct.adapter* %127, i32 %128, i64* %129, i64 %130)
  store i64 %131, i64* %11, align 8
  br label %132

132:                                              ; preds = %126, %122
  br label %133

133:                                              ; preds = %132
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %5, align 8
  br label %135

135:                                              ; preds = %133, %120
  %136 = load i64, i64* %5, align 8
  ret i64 %136
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_report_sec_ie(%struct.adapter*, i64, i32*) #1

declare dso_local i32 @SecIsInPMKIDList(%struct.adapter*, i32) #1

declare dso_local i64 @rtw_append_pmkid(%struct.adapter*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
