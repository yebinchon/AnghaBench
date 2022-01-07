; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_do_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ioctl_set.c_rtw_do_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.mlme_priv }
%struct.TYPE_5__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32 }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_6__, i32, i32, %struct.__queue, %struct.list_head*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.__queue = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.TYPE_4__ = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@_module_rtl871x_ioctl_set_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0A rtw_do_join: phead = %p; plist = %p\0A\0A\0A\00", align 1
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"rtw_do_join(): site survey if scanned_queue is empty\0A.\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"rtw_do_join(): site survey return error\0A.\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@MAX_JOIN_TIMEOUT = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"***Error =>do_goin: rtw_createbss_cmd status FAIL***\0A \00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"***Error => rtw_select_and_join_from_scanned_queue FAIL under STA_Mode***\0A \00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"do_join(): site survey return error\0A.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_do_join(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.__queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32* null, i32** %5, align 8
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.mlme_priv* %12, %struct.mlme_priv** %6, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 5
  store %struct.__queue* %14, %struct.__queue** %7, align 8
  %15 = load i32, i32* @_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.__queue, %struct.__queue* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.__queue*, %struct.__queue** %7, align 8
  %21 = call %struct.list_head* @get_list_head(%struct.__queue* %20)
  store %struct.list_head* %21, %struct.list_head** %4, align 8
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = call %struct.list_head* @get_next(%struct.list_head* %22)
  store %struct.list_head* %23, %struct.list_head** %3, align 8
  %24 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %25 = load i32, i32* @_drv_info_, align 4
  %26 = load %struct.list_head*, %struct.list_head** %4, align 8
  %27 = load %struct.list_head*, %struct.list_head** %3, align 8
  %28 = bitcast %struct.list_head* %27 to i8*
  %29 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* %28)
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 -2, i32* %32, align 8
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %34 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %35 = call i32 @set_fwstate(%struct.mlme_priv* %33, i32 %34)
  %36 = load %struct.list_head*, %struct.list_head** %3, align 8
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %38 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %37, i32 0, i32 6
  store %struct.list_head* %36, %struct.list_head** %38, align 8
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.__queue*, %struct.__queue** %7, align 8
  %42 = getelementptr inbounds %struct.__queue, %struct.__queue* %41, i32 0, i32 1
  %43 = call i64 @list_empty(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %1
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %47 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.__queue, %struct.__queue* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %51 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %52 = call i32 @_clr_fwstate_(%struct.mlme_priv* %50, i32 %51)
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %45
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = call i64 @rtw_to_roam(%struct.adapter* %59)
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %58, %45
  %63 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %64 = load i32, i32* @_drv_info_, align 4
  %65 = call i32 @RT_TRACE(i32 %63, i32 %64, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %68 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %67, i32 0, i32 1
  %69 = call i32 @rtw_sitesurvey_cmd(%struct.adapter* %66, i32* %68, i32 1, i32* null, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @_SUCCESS, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %62
  %74 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %75 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %77 = load i32, i32* @_drv_err_, align 4
  %78 = call i32 @RT_TRACE(i32 %76, i32 %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %62
  br label %84

80:                                               ; preds = %58
  %81 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %82 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  %83 = load i32, i32* @_FAIL, align 4
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %80, %79
  br label %178

85:                                               ; preds = %1
  %86 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %87 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.__queue, %struct.__queue* %87, i32 0, i32 0
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %91 = call i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @_SUCCESS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %99 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %98, i32 0, i32 4
  %100 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %101 = call i32 @_set_timer(i32* %99, i32 %100)
  br label %176

102:                                              ; preds = %85
  %103 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %104 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %105 = call i32 @check_fwstate(%struct.mlme_priv* %103, i32 %104)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %142

107:                                              ; preds = %102
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store %struct.wlan_bssid_ex* %110, %struct.wlan_bssid_ex** %10, align 8
  %111 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %112 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %113 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  %114 = load %struct.adapter*, %struct.adapter** %2, align 8
  %115 = getelementptr inbounds %struct.adapter, %struct.adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %5, align 8
  %119 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %10, align 8
  %120 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %119, i32 0, i32 1
  %121 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %122 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %121, i32 0, i32 1
  %123 = call i32 @memcpy(i32* %120, i32* %122, i32 4)
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = call i32 @rtw_update_registrypriv_dev_network(%struct.adapter* %124)
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @rtw_generate_random_ibss(i32* %126)
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = call i32 @rtw_createbss_cmd(%struct.adapter* %128)
  %130 = load i32, i32* @_SUCCESS, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %107
  %133 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %134 = load i32, i32* @_drv_err_, align 4
  %135 = call i32 @RT_TRACE(i32 %133, i32 %134, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %178

136:                                              ; preds = %107
  %137 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %138 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %140 = load i32, i32* @_drv_info_, align 4
  %141 = call i32 @RT_TRACE(i32 %139, i32 %140, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %175

142:                                              ; preds = %102
  %143 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %144 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %145 = call i32 @_clr_fwstate_(%struct.mlme_priv* %143, i32 %144)
  %146 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %147 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %142
  %152 = load %struct.adapter*, %struct.adapter** %2, align 8
  %153 = call i64 @rtw_to_roam(%struct.adapter* %152)
  %154 = icmp sgt i64 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %151, %142
  %156 = load %struct.adapter*, %struct.adapter** %2, align 8
  %157 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %158 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %157, i32 0, i32 1
  %159 = call i32 @rtw_sitesurvey_cmd(%struct.adapter* %156, i32* %158, i32 1, i32* null, i32 0)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* @_SUCCESS, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %155
  %164 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %165 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %167 = load i32, i32* @_drv_err_, align 4
  %168 = call i32 @RT_TRACE(i32 %166, i32 %167, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %169

169:                                              ; preds = %163, %155
  br label %174

170:                                              ; preds = %151
  %171 = load i32, i32* @_FAIL, align 4
  store i32 %171, i32* %8, align 4
  %172 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %173 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %172, i32 0, i32 0
  store i32 0, i32* %173, align 8
  br label %174

174:                                              ; preds = %170, %169
  br label %175

175:                                              ; preds = %174, %136
  br label %176

176:                                              ; preds = %175, %95
  br label %177

177:                                              ; preds = %176
  br label %178

178:                                              ; preds = %177, %132, %84
  %179 = load i32, i32* %8, align 4
  ret i32 %179
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i64 @rtw_to_roam(%struct.adapter*) #1

declare dso_local i32 @rtw_sitesurvey_cmd(%struct.adapter*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv*) #1

declare dso_local i32 @_set_timer(i32*, i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtw_update_registrypriv_dev_network(%struct.adapter*) #1

declare dso_local i32 @rtw_generate_random_ibss(i32*) #1

declare dso_local i32 @rtw_createbss_cmd(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
