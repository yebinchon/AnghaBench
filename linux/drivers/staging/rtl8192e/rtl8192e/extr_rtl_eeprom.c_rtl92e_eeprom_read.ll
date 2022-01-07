; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_eeprom.c_rtl92e_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_eeprom.c_rtl92e_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64 }

@EPROM_CMD = common dso_local global i32 0, align 4
@EPROM_CMD_PROGRAM = common dso_local global i32 0, align 4
@EPROM_CMD_OPERATING_MODE_SHIFT = common dso_local global i32 0, align 4
@EPROM_DELAY = common dso_local global i32 0, align 4
@EEPROM_93C56 = common dso_local global i64 0, align 8
@EPROM_CMD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92e_eeprom_read(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %7)
  store %struct.r8192_priv* %8, %struct.r8192_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load i32, i32* @EPROM_CMD, align 4
  %11 = load i32, i32* @EPROM_CMD_PROGRAM, align 4
  %12 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i32 @rtl92e_writeb(%struct.net_device* %9, i32 %10, i32 %13)
  %15 = load i32, i32* @EPROM_DELAY, align 4
  %16 = call i32 @udelay(i32 %15)
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EEPROM_93C56, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 255
  %26 = or i32 %25, 1536
  %27 = call i32 @_rtl92e_eeprom_xfer(%struct.net_device* %23, i32 %26, i32 11)
  store i32 %27, i32* %6, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 63
  %32 = or i32 %31, 384
  %33 = call i32 @_rtl92e_eeprom_xfer(%struct.net_device* %29, i32 %32, i32 9)
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @EPROM_CMD, align 4
  %37 = load i32, i32* @EPROM_CMD_NORMAL, align 4
  %38 = load i32, i32* @EPROM_CMD_OPERATING_MODE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = call i32 @rtl92e_writeb(%struct.net_device* %35, i32 %36, i32 %39)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @rtl92e_writeb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @_rtl92e_eeprom_xfer(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
