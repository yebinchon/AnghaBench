; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_createbss_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_rtw_createbss_cmd.c"
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
@LED_CTL_START_TO_LINK = common dso_local global i32 0, align 4
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" createbss for Any SSid:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" createbss for SSid:%s\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
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
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @LED_CTL_START_TO_LINK, align 4
  %18 = call i32 @led_control_8188eu(%struct.adapter* %16, i32 %17)
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %26 = load i32, i32* @_drv_info_, align 4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @RT_TRACE(i32 %25, i32 %26, i8* %32)
  br label %44

34:                                               ; preds = %1
  %35 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %36 = load i32, i32* @_drv_info_, align 4
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %38 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @RT_TRACE(i32 %35, i32 %36, i8* %42)
  br label %44

44:                                               ; preds = %34, %24
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.cmd_obj* @kzalloc(i32 40, i32 %45)
  store %struct.cmd_obj* %46, %struct.cmd_obj** %3, align 8
  %47 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %48 = icmp ne %struct.cmd_obj* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @_FAIL, align 4
  store i32 %50, i32* %7, align 4
  br label %78

51:                                               ; preds = %44
  %52 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %53 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %52, i32 0, i32 5
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load i32, i32* @_CreateBss_CMD_, align 4
  %56 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %57 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %59 = bitcast %struct.wlan_bssid_ex* %58 to i8*
  %60 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %61 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %63 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %62)
  %64 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %65 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %67 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  %68 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %69 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %71 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %74 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.cmd_priv*, %struct.cmd_priv** %4, align 8
  %76 = load %struct.cmd_obj*, %struct.cmd_obj** %3, align 8
  %77 = call i32 @rtw_enqueue_cmd(%struct.cmd_priv* %75, %struct.cmd_obj* %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %51, %49
  %79 = load i32, i32* %7, align 4
  ret i32 %79
}

declare dso_local i32 @led_control_8188eu(%struct.adapter*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local %struct.cmd_obj* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @rtw_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
