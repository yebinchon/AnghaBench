; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseXtal_8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseXtal_8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@EEPROM_XTAL_8723B = common dso_local global i64 0, align 8
@EEPROM_Default_CrystalCap_8723B = common dso_local global i8* null, align 8
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"EEPROM CrystalCap: 0x%2x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_EfuseParseXtal_8723B(%struct.adapter* %0, i32* %1, i32 %2) #0 {
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
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* @EEPROM_XTAL_8723B, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %18 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %20 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 255
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load i8*, i8** @EEPROM_Default_CrystalCap_8723B, align 8
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %27 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %12
  br label %34

29:                                               ; preds = %3
  %30 = load i8*, i8** @EEPROM_Default_CrystalCap_8723B, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %33 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %36 = load i32, i32* @_drv_notice_, align 4
  %37 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %38 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @RT_TRACE(i32 %35, i32 %36, i8* %41)
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
