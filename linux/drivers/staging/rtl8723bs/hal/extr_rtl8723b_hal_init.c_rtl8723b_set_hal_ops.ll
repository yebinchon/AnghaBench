; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_set_hal_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_set_hal_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hal_ops = type { i32*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@rtl8723b_free_hal_data = common dso_local global i32 0, align 4
@rtl8723b_init_dm_priv = common dso_local global i32 0, align 4
@rtl8723b_read_chip_version = common dso_local global i32 0, align 4
@UpdateHalRAMask8723B = common dso_local global i32 0, align 4
@PHY_SetBWMode8723B = common dso_local global i32 0, align 4
@PHY_SwChnl8723B = common dso_local global i32 0, align 4
@PHY_SetSwChnlBWMode8723B = common dso_local global i32 0, align 4
@PHY_SetTxPowerLevel8723B = common dso_local global i32 0, align 4
@PHY_GetTxPowerLevel8723B = common dso_local global i32 0, align 4
@rtl8723b_HalDmWatchDog = common dso_local global i32 0, align 4
@rtl8723b_HalDmWatchDog_in_LPS = common dso_local global i32 0, align 4
@rtl8723b_SetBeaconRelatedRegisters = common dso_local global i32 0, align 4
@rtl8723b_Add_RateATid = common dso_local global i32 0, align 4
@rtl8723b_start_thread = common dso_local global i32 0, align 4
@rtl8723b_stop_thread = common dso_local global i32 0, align 4
@PHY_QueryBBReg_8723B = common dso_local global i32 0, align 4
@PHY_SetBBReg_8723B = common dso_local global i32 0, align 4
@PHY_QueryRFReg_8723B = common dso_local global i32 0, align 4
@PHY_SetRFReg_8723B = common dso_local global i32 0, align 4
@Hal_BT_EfusePowerSwitch = common dso_local global i32 0, align 4
@Hal_EfusePowerSwitch = common dso_local global i32 0, align 4
@Hal_ReadEFuse = common dso_local global i32 0, align 4
@Hal_GetEfuseDefinition = common dso_local global i32 0, align 4
@Hal_EfuseGetCurrentSize = common dso_local global i32 0, align 4
@Hal_EfusePgPacketRead = common dso_local global i32 0, align 4
@Hal_EfusePgPacketWrite = common dso_local global i32 0, align 4
@Hal_EfuseWordEnableDataWrite = common dso_local global i32 0, align 4
@Hal_EfusePgPacketWrite_BT = common dso_local global i32 0, align 4
@rtl8723b_GetHalODMVar = common dso_local global i32 0, align 4
@rtl8723b_SetHalODMVar = common dso_local global i32 0, align 4
@hal_xmit_handler = common dso_local global i32 0, align 4
@hal_notch_filter_8723b = common dso_local global i32 0, align 4
@c2h_handler_8723b = common dso_local global i32 0, align 4
@c2h_id_filter_ccx_8723b = common dso_local global i32 0, align 4
@FillH2CCmd8723B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_set_hal_ops(%struct.hal_ops* %0) #0 {
  %2 = alloca %struct.hal_ops*, align 8
  store %struct.hal_ops* %0, %struct.hal_ops** %2, align 8
  %3 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %4 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %3, i32 0, i32 34
  store i32* @rtl8723b_free_hal_data, i32** %4, align 8
  %5 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %6 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %5, i32 0, i32 33
  store i32* @rtl8723b_init_dm_priv, i32** %6, align 8
  %7 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %8 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %7, i32 0, i32 32
  store i32* @rtl8723b_read_chip_version, i32** %8, align 8
  %9 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %10 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %9, i32 0, i32 31
  store i32* @UpdateHalRAMask8723B, i32** %10, align 8
  %11 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %12 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %11, i32 0, i32 30
  store i32* @PHY_SetBWMode8723B, i32** %12, align 8
  %13 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %14 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %13, i32 0, i32 29
  store i32* @PHY_SwChnl8723B, i32** %14, align 8
  %15 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %16 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %15, i32 0, i32 28
  store i32* @PHY_SetSwChnlBWMode8723B, i32** %16, align 8
  %17 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %18 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %17, i32 0, i32 27
  store i32* @PHY_SetTxPowerLevel8723B, i32** %18, align 8
  %19 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %20 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %19, i32 0, i32 26
  store i32* @PHY_GetTxPowerLevel8723B, i32** %20, align 8
  %21 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %22 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %21, i32 0, i32 25
  store i32* @rtl8723b_HalDmWatchDog, i32** %22, align 8
  %23 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %24 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %23, i32 0, i32 24
  store i32* @rtl8723b_HalDmWatchDog_in_LPS, i32** %24, align 8
  %25 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %26 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %25, i32 0, i32 23
  store i32* @rtl8723b_SetBeaconRelatedRegisters, i32** %26, align 8
  %27 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %28 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %27, i32 0, i32 22
  store i32* @rtl8723b_Add_RateATid, i32** %28, align 8
  %29 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %30 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %29, i32 0, i32 21
  store i32* @rtl8723b_start_thread, i32** %30, align 8
  %31 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %32 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %31, i32 0, i32 20
  store i32* @rtl8723b_stop_thread, i32** %32, align 8
  %33 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %34 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %33, i32 0, i32 19
  store i32* @PHY_QueryBBReg_8723B, i32** %34, align 8
  %35 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %36 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %35, i32 0, i32 18
  store i32* @PHY_SetBBReg_8723B, i32** %36, align 8
  %37 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %38 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %37, i32 0, i32 17
  store i32* @PHY_QueryRFReg_8723B, i32** %38, align 8
  %39 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %40 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %39, i32 0, i32 16
  store i32* @PHY_SetRFReg_8723B, i32** %40, align 8
  %41 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %42 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %41, i32 0, i32 15
  store i32* @Hal_BT_EfusePowerSwitch, i32** %42, align 8
  %43 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %44 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %43, i32 0, i32 14
  store i32* @Hal_EfusePowerSwitch, i32** %44, align 8
  %45 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %46 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %45, i32 0, i32 13
  store i32* @Hal_ReadEFuse, i32** %46, align 8
  %47 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %48 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %47, i32 0, i32 12
  store i32* @Hal_GetEfuseDefinition, i32** %48, align 8
  %49 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %50 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %49, i32 0, i32 11
  store i32* @Hal_EfuseGetCurrentSize, i32** %50, align 8
  %51 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %52 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %51, i32 0, i32 10
  store i32* @Hal_EfusePgPacketRead, i32** %52, align 8
  %53 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %54 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %53, i32 0, i32 9
  store i32* @Hal_EfusePgPacketWrite, i32** %54, align 8
  %55 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %56 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %55, i32 0, i32 8
  store i32* @Hal_EfuseWordEnableDataWrite, i32** %56, align 8
  %57 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %58 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %57, i32 0, i32 7
  store i32* @Hal_EfusePgPacketWrite_BT, i32** %58, align 8
  %59 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %60 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %59, i32 0, i32 6
  store i32* @rtl8723b_GetHalODMVar, i32** %60, align 8
  %61 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %62 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %61, i32 0, i32 5
  store i32* @rtl8723b_SetHalODMVar, i32** %62, align 8
  %63 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %64 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %63, i32 0, i32 4
  store i32* @hal_xmit_handler, i32** %64, align 8
  %65 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %66 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %65, i32 0, i32 3
  store i32* @hal_notch_filter_8723b, i32** %66, align 8
  %67 = load i32, i32* @c2h_handler_8723b, align 4
  %68 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %69 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @c2h_id_filter_ccx_8723b, align 4
  %71 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %72 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.hal_ops*, %struct.hal_ops** %2, align 8
  %74 = getelementptr inbounds %struct.hal_ops, %struct.hal_ops* %73, i32 0, i32 0
  store i32* @FillH2CCmd8723B, i32** %74, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
