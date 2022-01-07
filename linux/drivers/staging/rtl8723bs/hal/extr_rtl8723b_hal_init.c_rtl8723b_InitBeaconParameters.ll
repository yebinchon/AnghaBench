; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_InitBeaconParameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_rtl8723b_InitBeaconParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i8*, i8*, i8*, i8*, i8* }

@DIS_TSF_UDT = common dso_local global i32 0, align 4
@EN_BCN_FUNCTION = common dso_local global i32 0, align 4
@REG_BCN_CTRL = common dso_local global i64 0, align 8
@REG_TBTT_PROHIBIT = common dso_local global i64 0, align 8
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@REG_DRVERLYINT = common dso_local global i32 0, align 4
@DRIVER_EARLY_INT_TIME_8723B = common dso_local global i32 0, align 4
@REG_BCNDMATIM = common dso_local global i32 0, align 4
@BCN_DMA_ATIME_INT_TIME_8723B = common dso_local global i32 0, align 4
@REG_BCNTCFG = common dso_local global i64 0, align 8
@REG_TXPAUSE = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@REG_CR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_InitBeaconParameters(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.hal_com_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %6)
  store %struct.hal_com_data* %7, %struct.hal_com_data** %3, align 8
  %8 = load i32, i32* @DIS_TSF_UDT, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 8
  %12 = or i32 %9, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @EN_BCN_FUNCTION, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = load i64, i64* @REG_BCN_CTRL, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @rtw_write16(%struct.adapter* %16, i64 %17, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %22 = call i32 @rtw_write16(%struct.adapter* %20, i64 %21, i32 25604)
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* @WIFI_STATION_STATE, align 4
  %26 = call i32 @check_fwstate(i32* %24, i32 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @REG_DRVERLYINT, align 4
  %31 = load i32, i32* @DRIVER_EARLY_INT_TIME_8723B, align 4
  %32 = call i32 @rtw_write8(%struct.adapter* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %1
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @REG_BCNDMATIM, align 4
  %36 = load i32, i32* @BCN_DMA_ATIME_INT_TIME_8723B, align 4
  %37 = call i32 @rtw_write8(%struct.adapter* %34, i32 %35, i32 %36)
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i64, i64* @REG_BCNTCFG, align 8
  %40 = call i32 @rtw_write16(%struct.adapter* %38, i64 %39, i32 26127)
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i64, i64* @REG_BCN_CTRL, align 8
  %43 = call i8* @rtw_read8(%struct.adapter* %41, i64 %42)
  %44 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %45 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.adapter*, %struct.adapter** %2, align 8
  %47 = load i64, i64* @REG_TXPAUSE, align 8
  %48 = call i8* @rtw_read8(%struct.adapter* %46, i64 %47)
  %49 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %50 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %53 = add nsw i64 %52, 2
  %54 = call i8* @rtw_read8(%struct.adapter* %51, i64 %53)
  %55 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %56 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.adapter*, %struct.adapter** %2, align 8
  %58 = load i64, i64* @REG_TBTT_PROHIBIT, align 8
  %59 = add nsw i64 %58, 2
  %60 = call i8* @rtw_read8(%struct.adapter* %57, i64 %59)
  %61 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %62 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.adapter*, %struct.adapter** %2, align 8
  %64 = load i64, i64* @REG_CR, align 8
  %65 = add nsw i64 %64, 1
  %66 = call i8* @rtw_read8(%struct.adapter* %63, i64 %65)
  %67 = load %struct.hal_com_data*, %struct.hal_com_data** %3, align 8
  %68 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @rtw_write16(%struct.adapter*, i64, i32) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

declare dso_local i32 @rtw_write8(%struct.adapter*, i32, i32) #1

declare dso_local i8* @rtw_read8(%struct.adapter*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
