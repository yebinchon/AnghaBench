; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_lps_ctrl_wk_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_lps_ctrl_wk_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.pwrctrl_priv = type { i32, i32 }

@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LPS_CTRL_SCAN\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LPS_CTRL_JOINBSS\00", align 1
@HW_VAR_H2C_FW_JOINBSSRPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"LPS_CTRL_DISCONNECT\00", align 1
@jiffies = common dso_local global i32 0, align 4
@PACKET_DHCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"LPS_CTRL_SPECIAL_PACKET\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"LPS_CTRL_LEAVE\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"LPS_CTRL_TRAFFIC_BUSY\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lps_ctrl_wk_hdl(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwrctrl_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %8)
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %13 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %14 = call i32 @check_fwstate(%struct.mlme_priv* %12, i32 %13)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %18 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %19 = call i32 @check_fwstate(%struct.mlme_priv* %17, i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %72

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %71 [
    i32 130, label %24
    i32 132, label %35
    i32 134, label %38
    i32 133, label %47
    i32 129, label %56
    i32 131, label %65
    i32 128, label %68
  ]

24:                                               ; preds = %22
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = call i32 @hal_btcoex_ScanNotify(%struct.adapter* %25, i32 1)
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %28 = load i32, i32* @_FW_LINKED, align 4
  %29 = call i32 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = call i32 @LPS_Leave(%struct.adapter* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  br label %72

35:                                               ; preds = %22
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = call i32 @LPS_Leave(%struct.adapter* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %72

38:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  %39 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load i32, i32* @HW_VAR_H2C_FW_JOINBSSRPT, align 4
  %43 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %41, i32 %42, i32* %7)
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @rtw_btcoex_MediaStatusNotify(%struct.adapter* %44, i32 %45)
  br label %72

47:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @rtw_btcoex_MediaStatusNotify(%struct.adapter* %48, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %3, align 8
  %52 = call i32 @LPS_Leave(%struct.adapter* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = load i32, i32* @HW_VAR_H2C_FW_JOINBSSRPT, align 4
  %55 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %53, i32 %54, i32* %7)
  br label %72

56:                                               ; preds = %22
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %59 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = load i32, i32* @PACKET_DHCP, align 4
  %62 = call i32 @hal_btcoex_SpecialPacketNotify(%struct.adapter* %60, i32 %61)
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = call i32 @LPS_Leave(%struct.adapter* %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %72

65:                                               ; preds = %22
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = call i32 @LPS_Leave(%struct.adapter* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %72

68:                                               ; preds = %22
  %69 = load %struct.adapter*, %struct.adapter** %3, align 8
  %70 = call i32 @LPS_Leave(%struct.adapter* %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %22, %68
  br label %72

72:                                               ; preds = %21, %71, %65, %56, %47, %38, %35, %34
  ret void
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @hal_btcoex_ScanNotify(%struct.adapter*, i32) #1

declare dso_local i32 @LPS_Leave(%struct.adapter*, i8*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @rtw_btcoex_MediaStatusNotify(%struct.adapter*, i32) #1

declare dso_local i32 @hal_btcoex_SpecialPacketNotify(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
