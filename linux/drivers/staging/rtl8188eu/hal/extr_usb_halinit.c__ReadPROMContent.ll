; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__ReadPROMContent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_usb_halinit.c__ReadPROMContent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.eeprom_priv = type { i32, i32 }

@REG_9346CR = common dso_local global i32 0, align 4
@BOOT_FROM_EEPROM = common dso_local global i32 0, align 4
@EEPROM_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Boot from %s, Autoload %s !\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"EEPROM\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"EFUSE\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Fail\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @_ReadPROMContent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ReadPROMContent(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.eeprom_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = call %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter* %5)
  store %struct.eeprom_priv* %6, %struct.eeprom_priv** %3, align 8
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = load i32, i32* @REG_9346CR, align 4
  %9 = call i32 @usb_read8(%struct.adapter* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BOOT_FROM_EEPROM, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %17 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EEPROM_EN, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 0, i32 1
  %24 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %25 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %27 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %32 = load %struct.eeprom_priv*, %struct.eeprom_priv** %3, align 8
  %33 = getelementptr inbounds %struct.eeprom_priv, %struct.eeprom_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i32 @DBG_88E(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %37)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @Hal_InitPGData88E(%struct.adapter* %39)
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = call i32 @readAdapterInfo_8188EU(%struct.adapter* %41)
  ret void
}

declare dso_local %struct.eeprom_priv* @GET_EEPROM_EFUSE_PRIV(%struct.adapter*) #1

declare dso_local i32 @usb_read8(%struct.adapter*, i32) #1

declare dso_local i32 @DBG_88E(i8*, i8*, i8*) #1

declare dso_local i32 @Hal_InitPGData88E(%struct.adapter*) #1

declare dso_local i32 @readAdapterInfo_8188EU(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
