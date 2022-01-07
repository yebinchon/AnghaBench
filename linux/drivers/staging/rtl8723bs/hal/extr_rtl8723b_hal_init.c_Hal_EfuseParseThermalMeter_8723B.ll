; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseThermalMeter_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseThermalMeter_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32, i32 }

@EEPROM_THERMAL_METER_8723B = common dso_local global i64 0, align 8
@EEPROM_Default_ThermalMeter_8723B = common dso_local global i8* null, align 8
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EEPROM ThermalMeter = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_EfuseParseThermalMeter_8723B(%struct.adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_com_data*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.adapter*, %struct.adapter** %4, align 8
  %9 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %8)
  store %struct.hal_com_data* %9, %struct.hal_com_data** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* @EEPROM_THERMAL_METER_8723B, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** @EEPROM_Default_ThermalMeter_8723B, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %23 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 255
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29, %24
  %33 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %34 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load i8*, i8** @EEPROM_Default_ThermalMeter_8723B, align 8
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %32, %29
  %40 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %41 = load i32, i32* @_drv_notice_, align 4
  %42 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %43 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @RT_TRACE(i32 %40, i32 %41, i8* %46)
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
