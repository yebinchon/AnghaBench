; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_SetBeaconRelatedRegisters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_SetBeaconRelatedRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }

@REG_BCN_CTRL = common dso_local global i32 0, align 4
@REG_ATIMWND = common dso_local global i32 0, align 4
@REG_BCN_INTERVAL = common dso_local global i32 0, align 4
@REG_SLOT = common dso_local global i32 0, align 4
@REG_TCR = common dso_local global i32 0, align 4
@TSFRST = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_CCK = common dso_local global i32 0, align 4
@REG_RXTSF_OFFSET_OFDM = common dso_local global i32 0, align 4
@DIS_BCNQ_SUB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtl8723b_SetBeaconRelatedRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723b_SetBeaconRelatedRegisters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_ext_priv* %9, %struct.mlme_ext_priv** %5, align 8
  %10 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %10, i32 0, i32 0
  store %struct.mlme_ext_info* %11, %struct.mlme_ext_info** %6, align 8
  %12 = load i32, i32* @REG_BCN_CTRL, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = load i32, i32* @REG_ATIMWND, align 4
  %15 = call i32 @rtw_write16(%struct.adapter* %13, i32 %14, i32 2)
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i32, i32* @REG_BCN_INTERVAL, align 4
  %18 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rtw_write16(%struct.adapter* %16, i32 %17, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = call i32 @rtl8723b_InitBeaconParameters(%struct.adapter* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load i32, i32* @REG_SLOT, align 4
  %26 = call i32 @rtw_write8(%struct.adapter* %24, i32 %25, i32 9)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @REG_TCR, align 4
  %29 = call i32 @rtw_read32(%struct.adapter* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* @TSFRST, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @REG_TCR, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @rtw_write32(%struct.adapter* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @TSFRST, align 4
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i32, i32* @REG_TCR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @rtw_write32(%struct.adapter* %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %48 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @WIFI_AP_STATE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @check_fwstate(i32* %46, i32 %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = load i32, i32* @REG_RXTSF_OFFSET_CCK, align 4
  %57 = call i32 @rtw_write8(%struct.adapter* %55, i32 %56, i32 80)
  %58 = load %struct.adapter*, %struct.adapter** %2, align 8
  %59 = load i32, i32* @REG_RXTSF_OFFSET_OFDM, align 4
  %60 = call i32 @rtw_write8(%struct.adapter* %58, i32 %59, i32 80)
  br label %61

61:                                               ; preds = %54, %1
  %62 = load %struct.adapter*, %struct.adapter** %2, align 8
  %63 = call i32 @_BeaconFunctionEnable(%struct.adapter* %62, i32 1, i32 1)
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = call i32 @ResumeTxBeacon(%struct.adapter* %64)
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @rtw_read8(%struct.adapter* %66, i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @DIS_BCNQ_SUB, align 4
  %70 = load i32, i32* %3, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %3, align 4
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @rtw_write8(%struct.adapter* %72, i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @rtw_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtl8723b_InitBeaconParameters(%struct.adapter*) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_read32(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

declare dso_local i32 @_BeaconFunctionEnable(%struct.adapter*, i32, i32) #1

declare dso_local i32 @ResumeTxBeacon(%struct.adapter*) #1

declare dso_local i32 @rtw_read8(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
