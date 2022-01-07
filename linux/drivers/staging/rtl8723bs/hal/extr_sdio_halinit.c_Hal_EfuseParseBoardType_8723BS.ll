; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_Hal_EfuseParseBoardType_8723BS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c_Hal_EfuseParseBoardType_8723BS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.hal_com_data = type { i32 }

@EEPROM_RF_BOARD_OPTION_8723B = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_BOARD_OPTION = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Board Type: 0x%2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32)* @Hal_EfuseParseBoardType_8723BS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hal_EfuseParseBoardType_8723BS(%struct.adapter* %0, i32* %1, i32 %2) #0 {
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
  br i1 %11, label %32, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* @EEPROM_RF_BOARD_OPTION_8723B, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 224
  %18 = ashr i32 %17, 5
  %19 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %20 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %22 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load i32, i32* @EEPROM_DEFAULT_BOARD_OPTION, align 4
  %27 = and i32 %26, 224
  %28 = ashr i32 %27, 5
  %29 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %30 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %12
  br label %35

32:                                               ; preds = %3
  %33 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %34 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %37 = load i32, i32* @_drv_info_, align 4
  %38 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %39 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @RT_TRACE(i32 %36, i32 %37, i8* %42)
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
