; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_usb_valid_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_usb_valid_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbb_charger = type { i32, i32, i32 }

@STATUS_USBIN_VALID = common dso_local global i32 0, align 4
@EXTCON_USB = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @smbb_usb_valid_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_usb_valid_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.smbb_charger*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.smbb_charger*
  store %struct.smbb_charger* %7, %struct.smbb_charger** %5, align 8
  %8 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @STATUS_USBIN_VALID, align 4
  %11 = call i32 @smbb_set_line_flag(%struct.smbb_charger* %8, i32 %9, i32 %10)
  %12 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %13 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EXTCON_USB, align 4
  %16 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %17 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @STATUS_USBIN_VALID, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @extcon_set_state_sync(i32 %14, i32 %15, i32 %20)
  %22 = load %struct.smbb_charger*, %struct.smbb_charger** %5, align 8
  %23 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @power_supply_changed(i32 %24)
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %26
}

declare dso_local i32 @smbb_set_line_flag(%struct.smbb_charger*, i32, i32) #1

declare dso_local i32 @extcon_set_state_sync(i32, i32, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
