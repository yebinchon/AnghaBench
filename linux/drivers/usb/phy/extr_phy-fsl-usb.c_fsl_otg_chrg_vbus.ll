; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_chrg_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-fsl-usb.c_fsl_otg_chrg_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.otg_fsm = type { i32 }

@usb_dr_regs = common dso_local global %struct.TYPE_2__* null, align 8
@OTGSC_INTSTS_MASK = common dso_local global i32 0, align 4
@OTGSC_CTRL_VBUS_DISCHARGE = common dso_local global i32 0, align 4
@OTGSC_CTRL_VBUS_CHARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsl_otg_chrg_vbus(%struct.otg_fsm* %0, i32 %1) #0 {
  %3 = alloca %struct.otg_fsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.otg_fsm* %0, %struct.otg_fsm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_dr_regs, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @fsl_readl(i32* %7)
  %9 = load i32, i32* @OTGSC_INTSTS_MASK, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @OTGSC_CTRL_VBUS_DISCHARGE, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load i32, i32* @OTGSC_CTRL_VBUS_CHARGE, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @OTGSC_CTRL_VBUS_CHARGE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @usb_dr_regs, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @fsl_writel(i32 %27, i32* %29)
  ret void
}

declare dso_local i32 @fsl_readl(i32*) #1

declare dso_local i32 @fsl_writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
