; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseIDCode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_hal_init.c_Hal_EfuseParseIDCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32 }

@RTL_EEPROM_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"EEPROM ID(%#x) is invalid!!\0A\00", align 1
@_module_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"EEPROM ID = 0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_EfuseParseIDCode(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eeprom_priv*, align 8
  %6 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.adapter*, %struct.adapter** %3, align 8
  %8 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %7)
  store %struct.eeprom_priv* %8, %struct.eeprom_priv** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @le16_to_cpu(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @RTL_EEPROM_ID, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @DBG_8192C(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %19 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load %struct.eeprom_priv*, %struct.eeprom_priv** %5, align 8
  %22 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* @_module_hal_init_c_, align 4
  %25 = load i32, i32* @_drv_notice_, align 4
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @RT_TRACE(i32 %24, i32 %25, i8* %27)
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @DBG_8192C(i8*, i64) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
