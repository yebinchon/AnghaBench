; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_lps_ctrl_wk_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_cmd.c_lps_ctrl_wk_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.pwrctrl_priv, %struct.mlme_priv }
%struct.pwrctrl_priv = type { i32, i32 }
%struct.mlme_priv = type { i32 }

@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@HW_VAR_H2C_FW_JOINBSSRPT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @lps_ctrl_wk_hdl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lps_ctrl_wk_hdl(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwrctrl_priv*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %13 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %14 = call i64 @check_fwstate(%struct.mlme_priv* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %18 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %19 = call i64 @check_fwstate(%struct.mlme_priv* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %59

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %58 [
    i32 129, label %24
    i32 131, label %33
    i32 133, label %36
    i32 132, label %43
    i32 128, label %49
    i32 130, label %55
  ]

24:                                               ; preds = %22
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %26 = load i32, i32* @_FW_LINKED, align 4
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = call i32 @LPS_Leave(%struct.adapter* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %59

33:                                               ; preds = %22
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = call i32 @LPS_Leave(%struct.adapter* %34)
  br label %59

36:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.adapter*, %struct.adapter** %3, align 8
  %41 = load i32, i32* @HW_VAR_H2C_FW_JOINBSSRPT, align 4
  %42 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %40, i32 %41, i32* %7)
  br label %59

43:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = call i32 @LPS_Leave(%struct.adapter* %44)
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = load i32, i32* @HW_VAR_H2C_FW_JOINBSSRPT, align 4
  %48 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %46, i32 %47, i32* %7)
  br label %59

49:                                               ; preds = %22
  %50 = load i32, i32* @jiffies, align 4
  %51 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %5, align 8
  %52 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = call i32 @LPS_Leave(%struct.adapter* %53)
  br label %59

55:                                               ; preds = %22
  %56 = load %struct.adapter*, %struct.adapter** %3, align 8
  %57 = call i32 @LPS_Leave(%struct.adapter* %56)
  br label %59

58:                                               ; preds = %22
  br label %59

59:                                               ; preds = %21, %58, %55, %49, %43, %36, %33, %32
  ret void
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @LPS_Leave(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
