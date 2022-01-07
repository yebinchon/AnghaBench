; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_InitPGData88E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_InitPGData88E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32 }

@EFUSE_WIFI = common dso_local global i32 0, align 4
@_module_hci_hal_init_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"AutoLoad Fail reported from CR9346!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Hal_InitPGData88E(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.eeprom_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %4)
  store %struct.eeprom_priv* %5, %struct.eeprom_priv** %3, align 8
  %6 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %7 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i32 @is_boot_from_eeprom(%struct.adapter* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i32, i32* @EFUSE_WIFI, align 4
  %17 = call i32 @EFUSE_ShadowMapUpdate(%struct.adapter* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @_module_hci_hal_init_c_, align 4
  %21 = load i32, i32* @_drv_notice_, align 4
  %22 = call i32 @RT_TRACE(i32 %20, i32 %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = call i32 @is_boot_from_eeprom(%struct.adapter* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = load i32, i32* @EFUSE_WIFI, align 4
  %29 = call i32 @EFUSE_ShadowMapUpdate(%struct.adapter* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @is_boot_from_eeprom(%struct.adapter*) #1

declare dso_local i32 @EFUSE_ShadowMapUpdate(%struct.adapter*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
