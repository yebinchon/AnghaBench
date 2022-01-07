; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_EFUSE_ShadowMapUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_efuse.c_EFUSE_ShadowMapUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32, i64 }

@EFUSE_MAP_LEN_88E = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_ShadowMapUpdate(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %6)
  store %struct.eeprom_priv* %7, %struct.eeprom_priv** %5, align 8
  %8 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %9 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %14 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @EFUSE_MAP_LEN_88E, align 4
  %17 = call i32 @memset(i32 %15, i32 255, i32 %16)
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %22 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Efuse_ReadAllMap(%struct.adapter* %19, i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %12
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @Efuse_ReadAllMap(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
