; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_loadparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_os_intfs.c_loadparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i32, i32, i8*, i32, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@rtw_debug = common dso_local global i32 0, align 4
@GlobalDebugLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@rtw_channel = common dso_local global i64 0, align 8
@rtw_wireless_mode = common dso_local global i64 0, align 8
@rtw_vrtl_carrier_sense = common dso_local global i64 0, align 8
@rtw_vcs_type = common dso_local global i64 0, align 8
@rtw_rts_thresh = common dso_local global i64 0, align 8
@rtw_frag_thresh = common dso_local global i64 0, align 8
@rtw_preamble = common dso_local global i64 0, align 8
@rtw_smart_ps = common dso_local global i64 0, align 8
@rtw_power_mgnt = common dso_local global i64 0, align 8
@rtw_ips_mode = common dso_local global i64 0, align 8
@rtw_acm_method = common dso_local global i64 0, align 8
@rtw_wmm_enable = common dso_local global i64 0, align 8
@rtw_uapsd_enable = common dso_local global i64 0, align 8
@rtw_ht_enable = common dso_local global i64 0, align 8
@rtw_cbw40_enable = common dso_local global i64 0, align 8
@rtw_ampdu_enable = common dso_local global i64 0, align 8
@rtw_rx_stbc = common dso_local global i64 0, align 8
@rtw_ampdu_amsdu = common dso_local global i64 0, align 8
@rtw_wifi_spec = common dso_local global i64 0, align 8
@rtw_channel_plan = common dso_local global i64 0, align 8
@rtw_antdiv_cfg = common dso_local global i64 0, align 8
@rtw_antdiv_type = common dso_local global i64 0, align 8
@rtw_hwpdn_mode = common dso_local global i64 0, align 8
@rtw_max_roaming_times = common dso_local global i64 0, align 8
@rtw_fw_iol = common dso_local global i32 0, align 4
@rtw_80211d = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ifname = common dso_local global i8* null, align 8
@if2name = common dso_local global i8* null, align 8
@rtw_notch_filter = common dso_local global i64 0, align 8
@rtw_monitor_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.net_device*)* @loadparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadparam(%struct.adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.registry_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 0
  store %struct.registry_priv* %7, %struct.registry_priv** %5, align 8
  %8 = load i32, i32* @rtw_debug, align 4
  store i32 %8, i32* @GlobalDebugLevel, align 4
  %9 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %10 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %9, i32 0, i32 32
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %14 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %15 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %14, i32 0, i32 32
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 3, i32* %16, align 8
  %17 = load i64, i64* @rtw_channel, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %20 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %19, i32 0, i32 31
  store i8* %18, i8** %20, align 8
  %21 = load i64, i64* @rtw_wireless_mode, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %24 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %23, i32 0, i32 30
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* @rtw_vrtl_carrier_sense, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %28 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %27, i32 0, i32 29
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* @rtw_vcs_type, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %32 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %31, i32 0, i32 28
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* @rtw_rts_thresh, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %36 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %35, i32 0, i32 27
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @rtw_frag_thresh, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %40 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %39, i32 0, i32 26
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* @rtw_preamble, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %44 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %43, i32 0, i32 25
  store i8* %42, i8** %44, align 8
  %45 = load i64, i64* @rtw_smart_ps, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %48 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %47, i32 0, i32 24
  store i8* %46, i8** %48, align 8
  %49 = load i64, i64* @rtw_power_mgnt, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %52 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %51, i32 0, i32 23
  store i8* %50, i8** %52, align 8
  %53 = load i64, i64* @rtw_ips_mode, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %56 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %55, i32 0, i32 22
  store i8* %54, i8** %56, align 8
  %57 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %58 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %57, i32 0, i32 21
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* @rtw_acm_method, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %62 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %61, i32 0, i32 20
  store i8* %60, i8** %62, align 8
  %63 = load i64, i64* @rtw_wmm_enable, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %66 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %65, i32 0, i32 19
  store i8* %64, i8** %66, align 8
  %67 = load i64, i64* @rtw_uapsd_enable, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %70 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %69, i32 0, i32 18
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* @rtw_ht_enable, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %74 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %73, i32 0, i32 17
  store i8* %72, i8** %74, align 8
  %75 = load i64, i64* @rtw_cbw40_enable, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %78 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %77, i32 0, i32 16
  store i8* %76, i8** %78, align 8
  %79 = load i64, i64* @rtw_ampdu_enable, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %82 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = load i64, i64* @rtw_rx_stbc, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %86 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %85, i32 0, i32 14
  store i8* %84, i8** %86, align 8
  %87 = load i64, i64* @rtw_ampdu_amsdu, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %90 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %89, i32 0, i32 13
  store i8* %88, i8** %90, align 8
  %91 = load i64, i64* @rtw_wifi_spec, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %94 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %93, i32 0, i32 12
  store i8* %92, i8** %94, align 8
  %95 = load i64, i64* @rtw_channel_plan, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %98 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %97, i32 0, i32 11
  store i8* %96, i8** %98, align 8
  %99 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %100 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i64, i64* @rtw_antdiv_cfg, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %104 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %103, i32 0, i32 10
  store i8* %102, i8** %104, align 8
  %105 = load i64, i64* @rtw_antdiv_type, align 8
  %106 = inttoptr i64 %105 to i8*
  %107 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %108 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %107, i32 0, i32 9
  store i8* %106, i8** %108, align 8
  %109 = load i64, i64* @rtw_hwpdn_mode, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %112 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %111, i32 0, i32 8
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @rtw_max_roaming_times, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %116 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @rtw_fw_iol, align 4
  %118 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %119 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load i64, i64* @rtw_80211d, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %123 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %125 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** @ifname, align 8
  %128 = call i32 @snprintf(i32 %126, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  %129 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %130 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** @if2name, align 8
  %133 = call i32 @snprintf(i32 %131, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  %134 = load i64, i64* @rtw_notch_filter, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %137 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %136, i32 0, i32 2
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @rtw_monitor_enable, align 4
  %139 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %140 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
