; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_Update_ODM_ComInfo_8723b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_Update_ODM_ComInfo_8723b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_4__, %struct.mlme_priv, %struct.mlme_ext_priv }
%struct.TYPE_4__ = type { i32 }
%struct.mlme_priv = type { i32 }
%struct.mlme_ext_priv = type { i32 }
%struct.dvobj_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pwrctrl_priv = type { i32 }
%struct.hal_com_data = type { i32, i32, i32, i32, i32, i32, %struct.dm_priv, i32 }
%struct.dm_priv = type { i32 }

@ODM_BB_DIG = common dso_local global i32 0, align 4
@ODM_BB_RA_MASK = common dso_local global i32 0, align 4
@ODM_BB_DYNAMIC_TXPWR = common dso_local global i32 0, align 4
@ODM_BB_FA_CNT = common dso_local global i32 0, align 4
@ODM_BB_RSSI_MONITOR = common dso_local global i32 0, align 4
@ODM_BB_CCK_PD = common dso_local global i32 0, align 4
@ODM_BB_PWR_SAVE = common dso_local global i32 0, align 4
@ODM_BB_CFO_TRACKING = common dso_local global i32 0, align 4
@ODM_MAC_EDCA_TURBO = common dso_local global i32 0, align 4
@ODM_RF_TX_PWR_TRACK = common dso_local global i32 0, align 4
@ODM_RF_CALIBRATION = common dso_local global i32 0, align 4
@ODM_CMNINFO_ABILITY = common dso_local global i32 0, align 4
@ODM_CMNINFO_TX_UNI = common dso_local global i32 0, align 4
@ODM_CMNINFO_RX_UNI = common dso_local global i32 0, align 4
@ODM_CMNINFO_WM_MODE = common dso_local global i32 0, align 4
@ODM_CMNINFO_SEC_CHNL_OFFSET = common dso_local global i32 0, align 4
@ODM_CMNINFO_SEC_MODE = common dso_local global i32 0, align 4
@ODM_CMNINFO_BW = common dso_local global i32 0, align 4
@ODM_CMNINFO_CHNL = common dso_local global i32 0, align 4
@ODM_CMNINFO_NET_CLOSED = common dso_local global i32 0, align 4
@ODM_CMNINFO_MP_MODE = common dso_local global i32 0, align 4
@ODM_CMNINFO_BAND = common dso_local global i32 0, align 4
@ODM_CMNINFO_FORCED_IGI_LB = common dso_local global i32 0, align 4
@ODM_CMNINFO_FORCED_RATE = common dso_local global i32 0, align 4
@ODM_CMNINFO_SCAN = common dso_local global i32 0, align 4
@ODM_CMNINFO_POWER_SAVING = common dso_local global i32 0, align 4
@NUM_STA = common dso_local global i32 0, align 4
@ODM_CMNINFO_STA_STATUS = common dso_local global i32 0, align 4
@ODM_BB_ADAPTIVITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @Update_ODM_ComInfo_8723b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Update_ODM_ComInfo_8723b(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.dvobj_priv*, align 8
  %6 = alloca %struct.pwrctrl_priv*, align 8
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dm_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 3
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %3, align 8
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 2
  store %struct.mlme_priv* %15, %struct.mlme_priv** %4, align 8
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = call %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter* %16)
  store %struct.dvobj_priv* %17, %struct.dvobj_priv** %5, align 8
  %18 = load %struct.adapter*, %struct.adapter** %2, align 8
  %19 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %18)
  store %struct.pwrctrl_priv* %19, %struct.pwrctrl_priv** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %20)
  store %struct.hal_com_data* %21, %struct.hal_com_data** %7, align 8
  %22 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %23 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %22, i32 0, i32 7
  store i32* %23, i32** %8, align 8
  %24 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %25 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %24, i32 0, i32 6
  store %struct.dm_priv* %25, %struct.dm_priv** %9, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @ODM_BB_DIG, align 4
  %27 = or i32 0, %26
  %28 = load i32, i32* @ODM_BB_RA_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ODM_BB_DYNAMIC_TXPWR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ODM_BB_FA_CNT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ODM_BB_RSSI_MONITOR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ODM_BB_CCK_PD, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ODM_BB_PWR_SAVE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ODM_BB_CFO_TRACKING, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ODM_MAC_EDCA_TURBO, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ODM_RF_TX_PWR_TRACK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @ODM_RF_CALIBRATION, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.dm_priv*, %struct.dm_priv** %9, align 8
  %49 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @ODM_CMNINFO_ABILITY, align 4
  %52 = load %struct.dm_priv*, %struct.dm_priv** %9, align 8
  %53 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ODM_CmnInfoUpdate(i32* %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* @ODM_CMNINFO_TX_UNI, align 4
  %58 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %59 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = call i32 @ODM_CmnInfoHook(i32* %56, i32 %57, i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @ODM_CMNINFO_RX_UNI, align 4
  %64 = load %struct.dvobj_priv*, %struct.dvobj_priv** %5, align 8
  %65 = getelementptr inbounds %struct.dvobj_priv, %struct.dvobj_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = call i32 @ODM_CmnInfoHook(i32* %62, i32 %63, i32* %66)
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* @ODM_CMNINFO_WM_MODE, align 4
  %70 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %71 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %70, i32 0, i32 0
  %72 = call i32 @ODM_CmnInfoHook(i32* %68, i32 %69, i32* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @ODM_CMNINFO_SEC_CHNL_OFFSET, align 4
  %75 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %76 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %75, i32 0, i32 5
  %77 = call i32 @ODM_CmnInfoHook(i32* %73, i32 %74, i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* @ODM_CMNINFO_SEC_MODE, align 4
  %80 = load %struct.adapter*, %struct.adapter** %2, align 8
  %81 = getelementptr inbounds %struct.adapter, %struct.adapter* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @ODM_CmnInfoHook(i32* %78, i32 %79, i32* %82)
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @ODM_CMNINFO_BW, align 4
  %86 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %87 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %86, i32 0, i32 4
  %88 = call i32 @ODM_CmnInfoHook(i32* %84, i32 %85, i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* @ODM_CMNINFO_CHNL, align 4
  %91 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %92 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %91, i32 0, i32 3
  %93 = call i32 @ODM_CmnInfoHook(i32* %89, i32 %90, i32* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* @ODM_CMNINFO_NET_CLOSED, align 4
  %96 = load %struct.adapter*, %struct.adapter** %2, align 8
  %97 = getelementptr inbounds %struct.adapter, %struct.adapter* %96, i32 0, i32 0
  %98 = call i32 @ODM_CmnInfoHook(i32* %94, i32 %95, i32* %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @ODM_CMNINFO_MP_MODE, align 4
  %101 = call i32 @ODM_CmnInfoHook(i32* %99, i32 %100, i32* %11)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* @ODM_CMNINFO_BAND, align 4
  %104 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %105 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %104, i32 0, i32 2
  %106 = call i32 @ODM_CmnInfoHook(i32* %102, i32 %103, i32* %105)
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* @ODM_CMNINFO_FORCED_IGI_LB, align 4
  %109 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %110 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %109, i32 0, i32 1
  %111 = call i32 @ODM_CmnInfoHook(i32* %107, i32 %108, i32* %110)
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @ODM_CMNINFO_FORCED_RATE, align 4
  %114 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %115 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %114, i32 0, i32 0
  %116 = call i32 @ODM_CmnInfoHook(i32* %112, i32 %113, i32* %115)
  %117 = load i32*, i32** %8, align 8
  %118 = load i32, i32* @ODM_CMNINFO_SCAN, align 4
  %119 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %120 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %119, i32 0, i32 0
  %121 = call i32 @ODM_CmnInfoHook(i32* %117, i32 %118, i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* @ODM_CMNINFO_POWER_SAVING, align 4
  %124 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %125 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %124, i32 0, i32 0
  %126 = call i32 @ODM_CmnInfoHook(i32* %122, i32 %123, i32* %125)
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %136, %1
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @NUM_STA, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* @ODM_CMNINFO_STA_STATUS, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @ODM_CmnInfoPtrArrayHook(i32* %132, i32 %133, i32 %134, i32* null)
  br label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %127

139:                                              ; preds = %127
  ret void
}

declare dso_local %struct.dvobj_priv* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ODM_CmnInfoUpdate(i32*, i32, i32) #1

declare dso_local i32 @ODM_CmnInfoHook(i32*, i32, i32*) #1

declare dso_local i32 @ODM_CmnInfoPtrArrayHook(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
