; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_readAdapterInfo_8188EU.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c_readAdapterInfo_8188EU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @readAdapterInfo_8188EU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readAdapterInfo_8188EU(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %4)
  store %struct.eeprom_priv* %5, %struct.eeprom_priv** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %8 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @Hal_EfuseParseIDCode88E(%struct.adapter* %6, i32 %9)
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %13 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %16 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @Hal_EfuseParsePIDVID_8188EU(%struct.adapter* %11, i32 %14, i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %2, align 8
  %20 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %21 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %24 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @Hal_EfuseParseMACAddr_8188EU(%struct.adapter* %19, i32 %22, i32 %25)
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %29 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %32 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @Hal_ReadPowerSavingMode88E(%struct.adapter* %27, i32 %30, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %37 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %40 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Hal_ReadTxPowerInfo88E(%struct.adapter* %35, i32 %38, i32 %41)
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %45 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %48 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Hal_EfuseParseEEPROMVer88E(%struct.adapter* %43, i32 %46, i32 %49)
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %53 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %56 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @rtl8188e_EfuseParseChnlPlan(%struct.adapter* %51, i32 %54, i32 %57)
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %61 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %64 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @Hal_EfuseParseXtal_8188E(%struct.adapter* %59, i32 %62, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %69 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %72 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @Hal_EfuseParseCustomerID88E(%struct.adapter* %67, i32 %70, i32 %73)
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %77 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %80 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @Hal_ReadAntennaDiversity88E(%struct.adapter* %75, i32 %78, i32 %81)
  %83 = load %struct.adapter*, %struct.adapter** %2, align 8
  %84 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %85 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %88 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @Hal_EfuseParseBoardType88E(%struct.adapter* %83, i32 %86, i32 %89)
  %91 = load %struct.adapter*, %struct.adapter** %2, align 8
  %92 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %93 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %96 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @Hal_ReadThermalMeter_88E(%struct.adapter* %91, i32 %94, i32 %97)
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @Hal_EfuseParseIDCode88E(%struct.adapter*, i32) #1

declare dso_local i32 @Hal_EfuseParsePIDVID_8188EU(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_EfuseParseMACAddr_8188EU(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_ReadPowerSavingMode88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_ReadTxPowerInfo88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_EfuseParseEEPROMVer88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtl8188e_EfuseParseChnlPlan(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_EfuseParseXtal_8188E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_EfuseParseCustomerID88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_ReadAntennaDiversity88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_EfuseParseBoardType88E(%struct.adapter*, i32, i32) #1

declare dso_local i32 @Hal_ReadThermalMeter_88E(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
