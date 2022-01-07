; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_do_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_do_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.mlme_priv }
%struct.TYPE_5__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32 }
%struct.mlme_priv = type { i32, i64, i32, %struct.TYPE_6__, i32, i32, %struct.__queue, %struct.list_head*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.__queue = type { i32, i32 }
%struct.list_head = type { %struct.list_head* }
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
@jiffies = common dso_local global i64 0, align 8
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
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 6
  store %struct.__queue* %14, %struct.__queue** %7, align 8
  %15 = load i32, i32* @_SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %17 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.__queue, %struct.__queue* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.__queue*, %struct.__queue** %7, align 8
  %21 = call %struct.list_head* @get_list_head(%struct.__queue* %20)
  store %struct.list_head* %21, %struct.list_head** %4, align 8
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 0
  %24 = load %struct.list_head*, %struct.list_head** %23, align 8
  store %struct.list_head* %24, %struct.list_head** %3, align 8
  %25 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %26 = load i32, i32* @_drv_info_, align 4
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  %28 = load %struct.list_head*, %struct.list_head** %3, align 8
  %29 = bitcast %struct.list_head* %28 to i8*
  %30 = call i32 @RT_TRACE(i32 %25, i32 %26, i8* %29)
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %32 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %31, i32 0, i32 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 -2, i32* %33, align 8
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %35 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %36 = call i32 @set_fwstate(%struct.mlme_priv* %34, i32 %35)
  %37 = load %struct.list_head*, %struct.list_head** %3, align 8
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %39 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %38, i32 0, i32 7
  store %struct.list_head* %37, %struct.list_head** %39, align 8
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %41 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.__queue*, %struct.__queue** %7, align 8
  %43 = getelementptr inbounds %struct.__queue, %struct.__queue* %42, i32 0, i32 1
  %44 = call i64 @list_empty(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %1
  %47 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %48 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.__queue, %struct.__queue* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %52 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %53 = call i32 @_clr_fwstate_(%struct.mlme_priv* %51, i32 %52)
  %54 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %55 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %61 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59, %46
  %65 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %66 = load i32, i32* @_drv_info_, align 4
  %67 = call i32 @RT_TRACE(i32 %65, i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.adapter*, %struct.adapter** %2, align 8
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 2
  %71 = call i32 @rtw_sitesurvey_cmd(%struct.adapter* %68, i32* %70, i32 1, i32* null, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %64
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %77 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %79 = load i32, i32* @_drv_err_, align 4
  %80 = call i32 @RT_TRACE(i32 %78, i32 %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %64
  br label %86

82:                                               ; preds = %59
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %84 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load i32, i32* @_FAIL, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %81
  br label %184

87:                                               ; preds = %1
  %88 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %89 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.__queue, %struct.__queue* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock_bh(i32* %90)
  %92 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %93 = call i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %87
  %98 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %99 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  %100 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %101 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %100, i32 0, i32 5
  %102 = load i64, i64* @jiffies, align 8
  %103 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %104 = call i64 @msecs_to_jiffies(i32 %103)
  %105 = add nsw i64 %102, %104
  %106 = call i32 @mod_timer(i32* %101, i64 %105)
  br label %182

107:                                              ; preds = %87
  %108 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %109 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %110 = call i64 @check_fwstate(%struct.mlme_priv* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %147

112:                                              ; preds = %107
  %113 = load %struct.adapter*, %struct.adapter** %2, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store %struct.wlan_bssid_ex* %115, %struct.wlan_bssid_ex** %10, align 8
  %116 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %117 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %118 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %5, align 8
  %124 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %10, align 8
  %125 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %124, i32 0, i32 1
  %126 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %127 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %126, i32 0, i32 2
  %128 = call i32 @memcpy(i32* %125, i32* %127, i32 4)
  %129 = load %struct.adapter*, %struct.adapter** %2, align 8
  %130 = call i32 @rtw_update_registrypriv_dev_network(%struct.adapter* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @rtw_generate_random_ibss(i32* %131)
  %133 = load %struct.adapter*, %struct.adapter** %2, align 8
  %134 = call i32 @rtw_createbss_cmd(%struct.adapter* %133)
  %135 = load i32, i32* @_SUCCESS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %112
  %138 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %139 = load i32, i32* @_drv_err_, align 4
  %140 = call i32 @RT_TRACE(i32 %138, i32 %139, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %184

141:                                              ; preds = %112
  %142 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %143 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %145 = load i32, i32* @_drv_info_, align 4
  %146 = call i32 @RT_TRACE(i32 %144, i32 %145, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %181

147:                                              ; preds = %107
  %148 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %149 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %150 = call i32 @_clr_fwstate_(%struct.mlme_priv* %148, i32 %149)
  %151 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %152 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %158 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156, %147
  %162 = load %struct.adapter*, %struct.adapter** %2, align 8
  %163 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %164 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %163, i32 0, i32 2
  %165 = call i32 @rtw_sitesurvey_cmd(%struct.adapter* %162, i32* %164, i32 1, i32* null, i32 0)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @_SUCCESS, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %171 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load i32, i32* @_module_rtl871x_ioctl_set_c_, align 4
  %173 = load i32, i32* @_drv_err_, align 4
  %174 = call i32 @RT_TRACE(i32 %172, i32 %173, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %175

175:                                              ; preds = %169, %161
  br label %180

176:                                              ; preds = %156
  %177 = load i32, i32* @_FAIL, align 4
  store i32 %177, i32* %8, align 4
  %178 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %179 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %176, %175
  br label %181

181:                                              ; preds = %180, %141
  br label %182

182:                                              ; preds = %181, %97
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183, %137, %86
  %185 = load i32, i32* %8, align 4
  ret i32 %185
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_sitesurvey_cmd(%struct.adapter*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

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
