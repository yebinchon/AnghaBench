; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_bus_send_sof_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_bus_send_sof_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.device = type { i32 }

@DVSTCTR = common dso_local global i32 0, align 4
@USBRST = common dso_local global i32 0, align 4
@UACT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"usbhs should be reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_bus_send_sof_enable(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %5 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %6 = load i32, i32* @DVSTCTR, align 4
  %7 = call i32 @usbhs_read(%struct.usbhs_priv* %5, i32 %6)
  %8 = load i32, i32* @USBRST, align 4
  %9 = load i32, i32* @UACT, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @USBRST, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %17 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %16)
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %22 = load i32, i32* @DVSTCTR, align 4
  %23 = load i32, i32* @USBRST, align 4
  %24 = load i32, i32* @UACT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @UACT, align 4
  %27 = call i32 @usbhs_bset(%struct.usbhs_priv* %21, i32 %22, i32 %25, i32 %26)
  ret void
}

declare dso_local i32 @usbhs_read(%struct.usbhs_priv*, i32) #1

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
