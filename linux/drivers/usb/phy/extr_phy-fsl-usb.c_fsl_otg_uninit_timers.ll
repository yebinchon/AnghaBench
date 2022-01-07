; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_uninit_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_uninit_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a_wait_vrise_tmr = common dso_local global i32 0, align 4
@a_wait_bcon_tmr = common dso_local global i32 0, align 4
@a_aidl_bdis_tmr = common dso_local global i32 0, align 4
@b_ase0_brst_tmr = common dso_local global i32 0, align 4
@b_se0_srp_tmr = common dso_local global i32 0, align 4
@b_srp_fail_tmr = common dso_local global i32 0, align 4
@a_wait_enum_tmr = common dso_local global i32 0, align 4
@b_srp_wait_tmr = common dso_local global i32 0, align 4
@b_data_pulse_tmr = common dso_local global i32 0, align 4
@b_vbus_pulse_tmr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_otg_uninit_timers() #0 {
  %1 = load i32, i32* @a_wait_vrise_tmr, align 4
  %2 = call i32 @kfree(i32 %1)
  %3 = load i32, i32* @a_wait_bcon_tmr, align 4
  %4 = call i32 @kfree(i32 %3)
  %5 = load i32, i32* @a_aidl_bdis_tmr, align 4
  %6 = call i32 @kfree(i32 %5)
  %7 = load i32, i32* @b_ase0_brst_tmr, align 4
  %8 = call i32 @kfree(i32 %7)
  %9 = load i32, i32* @b_se0_srp_tmr, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load i32, i32* @b_srp_fail_tmr, align 4
  %12 = call i32 @kfree(i32 %11)
  %13 = load i32, i32* @a_wait_enum_tmr, align 4
  %14 = call i32 @kfree(i32 %13)
  %15 = load i32, i32* @b_srp_wait_tmr, align 4
  %16 = call i32 @kfree(i32 %15)
  %17 = load i32, i32* @b_data_pulse_tmr, align 4
  %18 = call i32 @kfree(i32 %17)
  %19 = load i32, i32* @b_vbus_pulse_tmr, align 4
  %20 = call i32 @kfree(i32 %19)
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
