; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_usbreq_set_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_usbreq_set_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@USBREQ = common dso_local global i32 0, align 4
@USBVAL = common dso_local global i32 0, align 4
@USBINDX = common dso_local global i32 0, align 4
@USBLENG = common dso_local global i32 0, align 4
@DCPCTR = common dso_local global i32 0, align 4
@SUREQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_usbreq_set_val(%struct.usbhs_priv* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %5 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %6 = load i32, i32* @USBREQ, align 4
  %7 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %8 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %10, %13
  %15 = call i32 @usbhs_write(%struct.usbhs_priv* %5, i32 %6, i32 %14)
  %16 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %17 = load i32, i32* @USBVAL, align 4
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = call i32 @usbhs_write(%struct.usbhs_priv* %16, i32 %17, i32 %21)
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %24 = load i32, i32* @USBINDX, align 4
  %25 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %26 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le16_to_cpu(i32 %27)
  %29 = call i32 @usbhs_write(%struct.usbhs_priv* %23, i32 %24, i32 %28)
  %30 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %31 = load i32, i32* @USBLENG, align 4
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = call i32 @usbhs_write(%struct.usbhs_priv* %30, i32 %31, i32 %35)
  %37 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %38 = load i32, i32* @DCPCTR, align 4
  %39 = load i32, i32* @SUREQ, align 4
  %40 = load i32, i32* @SUREQ, align 4
  %41 = call i32 @usbhs_bset(%struct.usbhs_priv* %37, i32 %38, i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @usbhs_write(%struct.usbhs_priv*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usbhs_bset(%struct.usbhs_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
