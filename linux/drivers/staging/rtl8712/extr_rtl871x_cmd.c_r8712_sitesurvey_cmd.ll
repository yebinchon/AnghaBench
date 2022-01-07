; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_sitesurvey_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_cmd.c_r8712_sitesurvey_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i64, %struct.TYPE_2__, %struct.mlme_priv, %struct.cmd_priv }
%struct.TYPE_2__ = type { i32 (%struct._adapter.0*, i32)* }
%struct._adapter.0 = type opaque
%struct.mlme_priv = type { i32, i32 }
%struct.cmd_priv = type { i32 }
%struct.ndis_802_11_ssid = type { i32, i32 }
%struct.cmd_obj = type { i32 }
%struct.sitesurvey_parm = type { i8*, i32, i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SiteSurvey = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i64 0, align 8
@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SCANNING_TIMEOUT = common dso_local global i32 0, align 4
@LED_CTL_SITE_SURVEY = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_sitesurvey_cmd(%struct._adapter* %0, %struct.ndis_802_11_ssid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.ndis_802_11_ssid*, align 8
  %6 = alloca %struct.cmd_obj*, align 8
  %7 = alloca %struct.sitesurvey_parm*, align 8
  %8 = alloca %struct.cmd_priv*, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.ndis_802_11_ssid* %1, %struct.ndis_802_11_ssid** %5, align 8
  %10 = load %struct._adapter*, %struct._adapter** %4, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 3
  store %struct.cmd_priv* %11, %struct.cmd_priv** %8, align 8
  %12 = load %struct._adapter*, %struct._adapter** %4, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  store %struct.mlme_priv* %13, %struct.mlme_priv** %9, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i8* @kmalloc(i32 4, i32 %14)
  %16 = bitcast i8* %15 to %struct.cmd_obj*
  store %struct.cmd_obj* %16, %struct.cmd_obj** %6, align 8
  %17 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %18 = icmp ne %struct.cmd_obj* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %103

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i8* @kmalloc(i32 32, i32 %22)
  %24 = bitcast i8* %23 to %struct.sitesurvey_parm*
  store %struct.sitesurvey_parm* %24, %struct.sitesurvey_parm** %7, align 8
  %25 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %26 = icmp ne %struct.sitesurvey_parm* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %29 = call i32 @kfree(%struct.cmd_obj* %28)
  %30 = load i32, i32* @_FAIL, align 4
  store i32 %30, i32* %3, align 4
  br label %103

31:                                               ; preds = %21
  %32 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %33 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %34 = load i32, i32* @_SiteSurvey, align 4
  %35 = call i32 @GEN_CMD_CODE(i32 %34)
  %36 = call i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj* %32, %struct.sitesurvey_parm* %33, i32 %35)
  %37 = call i8* @cpu_to_le32(i32 48)
  %38 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %39 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %41 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %45 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %47 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %46, i32 0, i32 0
  store i8* null, i8** %47, align 8
  %48 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %49 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* @IW_ESSID_MAX_SIZE, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @memset(i32 %50, i32 0, i64 %52)
  %54 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %5, align 8
  %55 = icmp ne %struct.ndis_802_11_ssid* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %31
  %57 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %5, align 8
  %58 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %63 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %5, align 8
  %66 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %5, align 8
  %69 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @memcpy(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.ndis_802_11_ssid*, %struct.ndis_802_11_ssid** %5, align 8
  %73 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.sitesurvey_parm*, %struct.sitesurvey_parm** %7, align 8
  %77 = getelementptr inbounds %struct.sitesurvey_parm, %struct.sitesurvey_parm* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %61, %56, %31
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %80 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %81 = call i32 @set_fwstate(%struct.mlme_priv* %79, i32 %80)
  %82 = load %struct.cmd_priv*, %struct.cmd_priv** %8, align 8
  %83 = load %struct.cmd_obj*, %struct.cmd_obj** %6, align 8
  %84 = call i32 @r8712_enqueue_cmd(%struct.cmd_priv* %82, %struct.cmd_obj* %83)
  %85 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %86 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %85, i32 0, i32 1
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i32, i32* @SCANNING_TIMEOUT, align 4
  %89 = call i64 @msecs_to_jiffies(i32 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @mod_timer(i32* %86, i64 %90)
  %92 = load %struct._adapter*, %struct._adapter** %4, align 8
  %93 = getelementptr inbounds %struct._adapter, %struct._adapter* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct._adapter.0*, i32)*, i32 (%struct._adapter.0*, i32)** %94, align 8
  %96 = load %struct._adapter*, %struct._adapter** %4, align 8
  %97 = bitcast %struct._adapter* %96 to %struct._adapter.0*
  %98 = load i32, i32* @LED_CTL_SITE_SURVEY, align 4
  %99 = call i32 %95(%struct._adapter.0* %97, i32 %98)
  %100 = load %struct._adapter*, %struct._adapter** %4, align 8
  %101 = getelementptr inbounds %struct._adapter, %struct._adapter* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* @_SUCCESS, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %78, %27, %19
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_obj*) #1

declare dso_local i32 @init_h2fwcmd_w_parm_no_rsp(%struct.cmd_obj*, %struct.sitesurvey_parm*, i32) #1

declare dso_local i32 @GEN_CMD_CODE(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_enqueue_cmd(%struct.cmd_priv*, %struct.cmd_obj*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
