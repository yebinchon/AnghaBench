; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_sitesurvey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_hw_var_set_mlme_sitesurvey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.hal_com_data = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@RCR_CBSSID_BCN = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@REG_RCR = common dso_local global i32 0, align 4
@REG_RXFLTMAP2 = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@DIS_TSF_UDT = common dso_local global i64 0, align 8
@REG_RRSR = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64*)* @hw_var_set_mlme_sitesurvey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_var_set_mlme_sitesurvey(%struct.adapter* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.hal_com_data*, align 8
  %13 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %14)
  store %struct.hal_com_data* %15, %struct.hal_com_data** %12, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.mlme_priv* %17, %struct.mlme_priv** %13, align 8
  %18 = load i32, i32* @REG_BCN_CTRL, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @RCR_CBSSID_BCN, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %21 = load i32, i32* @WIFI_AP_STATE, align 4
  %22 = call i32 @check_fwstate(%struct.mlme_priv* %20, i32 %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @RCR_CBSSID_BCN, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %24, %3
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = load i32, i32* @REG_RCR, align 4
  %29 = call i32 @rtw_read32(%struct.adapter* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.adapter*, %struct.adapter** %4, align 8
  %39 = load i32, i32* @REG_RCR, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @rtw_write32(%struct.adapter* %38, i32 %39, i32 %40)
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = load i32, i32* @REG_RXFLTMAP2, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @rtw_write16(%struct.adapter* %42, i32 %43, i32 %44)
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %47 = load i32, i32* @WIFI_STATION_STATE, align 4
  %48 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @check_fwstate(%struct.mlme_priv* %46, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %33
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @rtw_read8(%struct.adapter* %55, i32 %56)
  store i64 %57, i64* %11, align 8
  %58 = load i64, i64* @DIS_TSF_UDT, align 8
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load %struct.adapter*, %struct.adapter** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @rtw_write8(%struct.adapter* %61, i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %54, %33
  %66 = load %struct.adapter*, %struct.adapter** %4, align 8
  %67 = load i32, i32* @REG_RRSR, align 4
  %68 = call i32 @rtw_read16(%struct.adapter* %66, i32 %67)
  %69 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %70 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %117

71:                                               ; preds = %26
  %72 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %73 = load i32, i32* @_FW_LINKED, align 4
  %74 = load i32, i32* @WIFI_AP_STATE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @check_fwstate(%struct.mlme_priv* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = load i32, i32* @REG_RXFLTMAP2, align 4
  %81 = call i32 @rtw_write16(%struct.adapter* %79, i32 %80, i32 65535)
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %84 = load i32, i32* @WIFI_STATION_STATE, align 4
  %85 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @check_fwstate(%struct.mlme_priv* %83, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %82
  %92 = load %struct.adapter*, %struct.adapter** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @rtw_read8(%struct.adapter* %92, i32 %93)
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* @DIS_TSF_UDT, align 8
  %96 = xor i64 %95, -1
  %97 = load i64, i64* %11, align 8
  %98 = and i64 %97, %96
  store i64 %98, i64* %11, align 8
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @rtw_write8(%struct.adapter* %99, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %91, %82
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %7, align 4
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = load i32, i32* @REG_RCR, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @rtw_write32(%struct.adapter* %107, i32 %108, i32 %109)
  %111 = load %struct.adapter*, %struct.adapter** %4, align 8
  %112 = load i32, i32* @REG_RRSR, align 4
  %113 = load %struct.hal_com_data*, %struct.hal_com_data** %12, align 8
  %114 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @rtw_write16(%struct.adapter* %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %103, %65
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i64 @rtw_read8(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i64) #1

declare dso_local i32 @rtw_read16(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
