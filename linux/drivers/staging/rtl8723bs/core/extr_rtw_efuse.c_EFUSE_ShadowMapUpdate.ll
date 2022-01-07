; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_efuse.c_EFUSE_ShadowMapUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_efuse.c_EFUSE_ShadowMapUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32, i64 }

@TYPE_EFUSE_MAP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_ShadowMapUpdate(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.eeprom_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %9)
  store %struct.eeprom_priv* %10, %struct.eeprom_priv** %7, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TYPE_EFUSE_MAP_LEN, align 4
  %14 = bitcast i64* %8 to i8*
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @EFUSE_GetEfuseDefinition(%struct.adapter* %11, i32 %12, i32 %13, i8* %14, i32 %15)
  %17 = load %struct.eeprom_priv*, %struct.eeprom_priv** %7, align 8
  %18 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.eeprom_priv*, %struct.eeprom_priv** %7, align 8
  %23 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @memset(i32 %24, i32 255, i64 %25)
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.adapter*, %struct.adapter** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.eeprom_priv*, %struct.eeprom_priv** %7, align 8
  %31 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @Efuse_ReadAllMap(%struct.adapter* %28, i32 %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %27, %21
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @EFUSE_GetEfuseDefinition(%struct.adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @Efuse_ReadAllMap(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
