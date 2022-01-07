; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__ReadEfuseInfo8723BS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_sdio_halinit.c__ReadEfuseInfo8723BS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32, i32* }

@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"====>_ReadEfuseInfo8723BS()\0A\00", align 1
@HWSET_MAX_SIZE_8723B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"[WARNING] size of efuse_eeprom_data is less than HWSET_MAX_SIZE_8723B!\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"<==== _ReadEfuseInfo8723BS()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_ReadEfuseInfo8723BS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ReadEfuseInfo8723BS(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.eeprom_priv*, align 8
  %4 = alloca i32*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %5)
  store %struct.eeprom_priv* %6, %struct.eeprom_priv** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %8 = load i32, i32* @_drv_info_, align 4
  %9 = call i32 @RT_TRACE(i32 %7, i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @HWSET_MAX_SIZE_8723B, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DBG_871X(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %17 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @Hal_InitPGData(%struct.adapter* %19, i32* %20)
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @Hal_EfuseParseIDCode(%struct.adapter* %22, i32* %23)
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %28 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @Hal_EfuseParseEEPROMVer_8723B(%struct.adapter* %25, i32* %26, i32 %29)
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %34 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @Hal_EfuseParseMACAddr_8723BS(%struct.adapter* %31, i32* %32, i32 %35)
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %40 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @Hal_EfuseParseTxPowerInfo_8723B(%struct.adapter* %37, i32* %38, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %46 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Hal_EfuseParseBoardType_8723BS(%struct.adapter* %43, i32* %44, i32 %47)
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %52 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @Hal_EfuseParsePackageType_8723B(%struct.adapter* %49, i32* %50, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %2, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %58 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @Hal_EfuseParseBTCoexistInfo_8723B(%struct.adapter* %55, i32* %56, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = load i32*, i32** %4, align 8
  %63 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %64 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @Hal_EfuseParseChnlPlan_8723B(%struct.adapter* %61, i32* %62, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %70 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @Hal_EfuseParseXtal_8723B(%struct.adapter* %67, i32* %68, i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %76 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Hal_EfuseParseThermalMeter_8723B(%struct.adapter* %73, i32* %74, i32 %77)
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %82 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @Hal_EfuseParseAntennaDiversity_8723B(%struct.adapter* %79, i32* %80, i32 %83)
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %88 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @Hal_EfuseParseCustomerID_8723B(%struct.adapter* %85, i32* %86, i32 %89)
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load i32*, i32** %4, align 8
  %93 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %94 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @Hal_EfuseParseVoltage_8723B(%struct.adapter* %91, i32* %92, i32 %95)
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %100 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @Hal_ReadRFGainOffset(%struct.adapter* %97, i32* %98, i32 %101)
  %103 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %104 = load i32, i32* @_drv_info_, align 4
  %105 = call i32 @RT_TRACE(i32 %103, i32 %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @Hal_InitPGData(%struct.adapter*, i32*) #1

declare dso_local i32 @Hal_EfuseParseIDCode(%struct.adapter*, i32*) #1

declare dso_local i32 @Hal_EfuseParseEEPROMVer_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseMACAddr_8723BS(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseTxPowerInfo_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseBoardType_8723BS(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParsePackageType_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseBTCoexistInfo_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseChnlPlan_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseXtal_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseThermalMeter_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseAntennaDiversity_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseCustomerID_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_EfuseParseVoltage_8723B(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @Hal_ReadRFGainOffset(%struct.adapter*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
