; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_sys_host_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_sys_host_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }

@DCFM = common dso_local global i32 0, align 4
@DRPD = common dso_local global i32 0, align 4
@DPRPU = common dso_local global i32 0, align 4
@HSE = common dso_local global i32 0, align 4
@USBE = common dso_local global i32 0, align 4
@SYSCFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_sys_host_ctrl(%struct.usbhs_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @DCFM, align 4
  %8 = load i32, i32* @DRPD, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DPRPU, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @HSE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @USBE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @DCFM, align 4
  %17 = load i32, i32* @DRPD, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HSE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @USBE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %24 = load i32, i32* @SYSCFG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  br label %31

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = call i32 @usbhs_bset(%struct.usbhs_priv* %23, i32 %24, i32 %25, i32 %32)
  ret void
}

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
