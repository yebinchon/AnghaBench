; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.twl4030_bci = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@dev_attr_mode = common dso_local global i32 0, align 4
@TWL4030_MODULE_INTERRUPTS = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIIMR1A = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIIMR2A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_bci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.twl4030_bci*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.twl4030_bci* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.twl4030_bci* %5, %struct.twl4030_bci** %3, align 8
  %6 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %7 = call i32 @twl4030_charger_enable_ac(%struct.twl4030_bci* %6, i32 0)
  %8 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %9 = call i32 @twl4030_charger_enable_usb(%struct.twl4030_bci* %8, i32 0)
  %10 = call i32 @twl4030_charger_enable_backup(i32 0, i32 0)
  %11 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %12 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @device_remove_file(i32* %14, i32* @dev_attr_mode)
  %16 = load %struct.twl4030_bci*, %struct.twl4030_bci** %3, align 8
  %17 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @device_remove_file(i32* %19, i32* @dev_attr_mode)
  %21 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %22 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR1A, align 4
  %23 = call i32 @twl_i2c_write_u8(i32 %21, i32 255, i32 %22)
  %24 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %25 = load i32, i32* @TWL4030_INTERRUPTS_BCIIMR2A, align 4
  %26 = call i32 @twl_i2c_write_u8(i32 %24, i32 255, i32 %25)
  ret i32 0
}

declare dso_local %struct.twl4030_bci* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @twl4030_charger_enable_ac(%struct.twl4030_bci*, i32) #1

declare dso_local i32 @twl4030_charger_enable_usb(%struct.twl4030_bci*, i32) #1

declare dso_local i32 @twl4030_charger_enable_backup(i32, i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
