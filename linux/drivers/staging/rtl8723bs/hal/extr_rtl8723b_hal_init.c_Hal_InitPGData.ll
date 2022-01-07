; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_InitPGData.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_InitPGData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i64, i32, i32 }

@EFUSE_WIFI = common dso_local global i32 0, align 4
@HWSET_MAX_SIZE_8723B = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AutoLoad Fail reported from CR9346!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_InitPGData(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %6)
  store %struct.eeprom_priv* %7, %struct.eeprom_priv** %5, align 8
  %8 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %9 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %14 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %12
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = load i32, i32* @EFUSE_WIFI, align 4
  %20 = call i32 @EFUSE_ShadowMapUpdate(%struct.adapter* %18, i32 %19, i32 0)
  %21 = load i32*, i32** %4, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %24 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* @HWSET_MAX_SIZE_8723B, align 4
  %28 = call i32 @memcpy(i8* %22, i8* %26, i32 %27)
  br label %29

29:                                               ; preds = %17, %12
  br label %51

30:                                               ; preds = %2
  %31 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %32 = load i32, i32* @_drv_notice_, align 4
  %33 = call i32 @RT_TRACE(i32 %31, i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %35 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load %struct.adapter*, %struct.adapter** %3, align 8
  %40 = load i32, i32* @EFUSE_WIFI, align 4
  %41 = call i32 @EFUSE_ShadowMapUpdate(%struct.adapter* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32*, i32** %4, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %46 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* @HWSET_MAX_SIZE_8723B, align 4
  %50 = call i32 @memcpy(i8* %44, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %29
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @EFUSE_ShadowMapUpdate(%struct.adapter*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
