; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_createbss_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_createbss_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_8__, i32, %struct.wlan_network }
%struct.TYPE_8__ = type { i32 }
%struct.wlan_network = type { i32, i32, i32, i64 }
%struct.cmd_obj = type { i64, i64 }
%struct.sta_info = type { i32 }
%struct.wlan_bssid_ex = type { i8*, i32, i8*, i8*, %struct.TYPE_7__, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i8* }

@H2C_SUCCESS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_createbss_cmd_callback(%struct._adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.wlan_bssid_ex*, align 8
  %10 = alloca %struct.wlan_network*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  store %struct.sta_info* null, %struct.sta_info** %6, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %7, align 8
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 1
  store %struct.mlme_priv* %12, %struct.mlme_priv** %8, align 8
  %13 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %16, %struct.wlan_bssid_ex** %9, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 4
  store %struct.wlan_network* %18, %struct.wlan_network** %10, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %20 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @H2C_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 3
  %27 = load i64, i64* @jiffies, align 8
  %28 = call i64 @msecs_to_jiffies(i32 1)
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %33 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %32, i32 0, i32 3
  %34 = call i32 @del_timer(i32* %33)
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %36 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %40 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WIFI_AP_STATE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %31
  %46 = load %struct._adapter*, %struct._adapter** %3, align 8
  %47 = getelementptr inbounds %struct._adapter, %struct._adapter* %46, i32 0, i32 0
  %48 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %49 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.sta_info* @r8712_get_stainfo(i32* %47, i32 %50)
  store %struct.sta_info* %51, %struct.sta_info** %6, align 8
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %45
  %55 = load %struct._adapter*, %struct._adapter** %3, align 8
  %56 = getelementptr inbounds %struct._adapter, %struct._adapter* %55, i32 0, i32 0
  %57 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %58 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call %struct.sta_info* @r8712_alloc_stainfo(i32* %56, i32 %59)
  store %struct.sta_info* %60, %struct.sta_info** %6, align 8
  %61 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %62 = icmp ne %struct.sta_info* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %125

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %45
  %66 = load %struct._adapter*, %struct._adapter** %3, align 8
  %67 = call i32 @r8712_indicate_connect(%struct._adapter* %66)
  br label %124

68:                                               ; preds = %31
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %70 = call %struct.wlan_network* @_r8712_alloc_network(%struct.mlme_priv* %69)
  store %struct.wlan_network* %70, %struct.wlan_network** %7, align 8
  %71 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %72 = icmp ne %struct.wlan_network* %71, null
  br i1 %72, label %84, label %73

73:                                               ; preds = %68
  %74 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %75 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %74, i32 0, i32 2
  %76 = call %struct.wlan_network* @r8712_get_oldest_wlan_network(%struct.TYPE_8__* %75)
  store %struct.wlan_network* %76, %struct.wlan_network** %7, align 8
  %77 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %78 = icmp ne %struct.wlan_network* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %125

80:                                               ; preds = %73
  %81 = load i64, i64* @jiffies, align 8
  %82 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %83 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  br label %91

84:                                               ; preds = %68
  %85 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %86 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %85, i32 0, i32 2
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %88 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = call i32 @list_add_tail(i32* %86, i32* %89)
  br label %91

91:                                               ; preds = %84, %80
  %92 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %93 = call i8* @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %92)
  %94 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %95 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %97 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %96, i32 0, i32 1
  %98 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %99 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %100 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @memcpy(i32* %97, %struct.wlan_bssid_ex* %98, i8* %101)
  %103 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %104 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %106 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %105, i32 0, i32 1
  %107 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %108 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %109 = call i8* @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %108)
  %110 = call i32 @memcpy(i32* %106, %struct.wlan_bssid_ex* %107, i8* %109)
  %111 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %112 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %91
  %118 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %119 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %120 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = xor i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %117, %91
  br label %124

124:                                              ; preds = %123, %65
  br label %125

125:                                              ; preds = %124, %79, %63
  %126 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %127 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %126, i32 0, i32 1
  %128 = load i64, i64* %5, align 8
  %129 = call i32 @spin_unlock_irqrestore(i32* %127, i64 %128)
  %130 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %131 = call i32 @r8712_free_cmd_obj(%struct.cmd_obj* %130)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32) #1

declare dso_local %struct.sta_info* @r8712_alloc_stainfo(i32*, i32) #1

declare dso_local i32 @r8712_indicate_connect(%struct._adapter*) #1

declare dso_local %struct.wlan_network* @_r8712_alloc_network(%struct.mlme_priv*) #1

declare dso_local %struct.wlan_network* @r8712_get_oldest_wlan_network(%struct.TYPE_8__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i8* @r8712_get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @memcpy(i32*, %struct.wlan_bssid_ex*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r8712_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
