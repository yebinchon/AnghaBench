; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_MACSettingCalibration8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_HalPhyRf_8723B.c__PHY_MACSettingCalibration8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ODM_COMP_CALIBRATION = common dso_local global i32 0, align 4
@ODM_DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"MAC settings for Calibration.\0A\00", align 1
@IQK_MAC_REG_NUM = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64*, i64*)* @_PHY_MACSettingCalibration8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PHY_MACSettingCalibration8723B(%struct.adapter* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hal_com_data*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %10)
  store %struct.hal_com_data* %11, %struct.hal_com_data** %8, align 8
  %12 = load %struct.hal_com_data*, %struct.hal_com_data** %8, align 8
  %13 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %12, i32 0, i32 0
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %15 = load i32, i32* @ODM_COMP_CALIBRATION, align 4
  %16 = load i32, i32* @ODM_DBG_LOUD, align 4
  %17 = call i32 @ODM_RT_TRACE(%struct.TYPE_3__* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64*, i64** %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @rtw_write8(i32 %20, i64 %24, i32 63)
  store i64 1, i64* %7, align 8
  br label %26

26:                                               ; preds = %49, %3
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @IQK_MAC_REG_NUM, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BIT3, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %43, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @rtw_write8(i32 %35, i64 %39, i32 %47)
  br label %49

49:                                               ; preds = %32
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  br label %26

52:                                               ; preds = %26
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BIT5, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @rtw_write8(i32 %55, i64 %59, i32 %67)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @ODM_RT_TRACE(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @rtw_write8(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
