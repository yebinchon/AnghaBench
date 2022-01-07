; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_createbss_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_createbss_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__, %struct.mlme_priv, %struct.cmd_priv }
%struct.TYPE_3__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.cmd_priv = type { i32 }
%struct.cmd_obj = type { i8*, i32, i64, i32*, i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" createbss for Any SSid:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" createbss for SSid:%s\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@_CreateBss_CMD_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_createbss_cmd(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.cmd_obj*, align 8
  %4 = alloca %struct.cmd_priv*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.cmd_priv* %9, %struct.cmd_priv** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.wlan_bssid_ex* %14, %struct.wlan_bssid_ex** %6, align 8
  %15 = load i32, i32* @_SUCCESS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %23 = load i32, i32* @_drv_info_, align 4
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %25 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* %29)
  br label %41

31:                                               ; preds = %1
  %32 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %33 = load i32, i32* @_drv_info_, align 4
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @RT_TRACE(i32 %32, i32 %33, i8* %39)
  br label %41

41:                                               ; preds = %31, %21
  %42 = call %struct.cmd_obj* @rtw_zmalloc(i32 40)
  store %struct.cmd_obj* %42, %struct.cmd_obj** %3, align 8
  %43 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %44 = icmp eq %struct.cmd_obj* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @_FAIL, align 4
  store i32 %46, i32* %7, align 4
  br label %74

47:                                               ; preds = %41
  %48 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %49 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %48, i32 0, i32 5
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load i32, i32* @_CreateBss_CMD_, align 4
  %52 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %53 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %55 = bitcast %struct.wlan_bssid_ex* %54 to i8*
  %56 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %57 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %59 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %58)
  %60 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %61 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %63 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %62, i32 0, i32 3
  store i32* null, i32** %63, align 8
  %64 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %65 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %67 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %70 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %72 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %73 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %71, %struct.cmd_obj* %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %47, %45
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.cmd_obj* @rtw_zmalloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
