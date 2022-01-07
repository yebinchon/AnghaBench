; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_HalDmWatchDog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_dm.c_rtl8723b_HalDmWatchDog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.hal_com_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@HW_VAR_FWLPS_RF_ON = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@ODM_CMNINFO_LINK = common dso_local global i32 0, align 4
@ODM_CMNINFO_STATION_STATE = common dso_local global i32 0, align 4
@ODM_CMNINFO_BT_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723b_HalDmWatchDog(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hal_com_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %10)
  store %struct.hal_com_data* %11, %struct.hal_com_data** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = call %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = load i32, i32* @HW_VAR_FWLPS_RF_ON, align 4
  %25 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %23, i32 %24, i32* %4)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = call i32 @dm_CheckStatistics(%struct.adapter* %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = call i32 @rtw_hal_check_rxfifo_full(%struct.adapter* %37)
  br label %39

39:                                               ; preds = %34, %31, %28, %18
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %78

42:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = call i64 @rtw_linked_check(%struct.adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* @WIFI_STATION_STATE, align 4
  %50 = call i64 @check_fwstate(i32* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %56 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %55, i32 0, i32 0
  %57 = load i32, i32* @ODM_CMNINFO_LINK, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ODM_CmnInfoUpdate(i32* %56, i32 %57, i32 %58)
  %60 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %61 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %60, i32 0, i32 0
  %62 = load i32, i32* @ODM_CMNINFO_STATION_STATE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ODM_CmnInfoUpdate(i32* %61, i32 %62, i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %2, align 8
  %66 = call i32 @hal_btcoex_IsBtDisabled(%struct.adapter* %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %68 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %67, i32 0, i32 0
  %69 = load i32, i32* @ODM_CMNINFO_BT_ENABLED, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 1
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  %74 = call i32 @ODM_CmnInfoUpdate(i32* %68, i32 %69, i32 %73)
  %75 = load %struct.hal_com_data*, %struct.hal_com_data** %6, align 8
  %76 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %75, i32 0, i32 0
  %77 = call i32 @ODM_DMWatchdog(i32* %76)
  br label %78

78:                                               ; preds = %54, %39
  br label %79

79:                                               ; preds = %78, %17
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @dm_CheckStatistics(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_check_rxfifo_full(%struct.adapter*) #1

declare dso_local i64 @rtw_linked_check(%struct.adapter*) #1

declare dso_local i64 @check_fwstate(i32*, i32) #1

declare dso_local i32 @ODM_CmnInfoUpdate(i32*, i32, i32) #1

declare dso_local i32 @hal_btcoex_IsBtDisabled(%struct.adapter*) #1

declare dso_local i32 @ODM_DMWatchdog(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
