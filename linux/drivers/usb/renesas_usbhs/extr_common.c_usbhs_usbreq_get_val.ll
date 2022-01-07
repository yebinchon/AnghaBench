; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_usbreq_get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_common.c_usbhs_usbreq_get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@USBREQ = common dso_local global i32 0, align 4
@USBVAL = common dso_local global i32 0, align 4
@USBINDX = common dso_local global i32 0, align 4
@USBLENG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usbhs_usbreq_get_val(%struct.usbhs_priv* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.usbhs_priv*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %6 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %7 = load i32, i32* @USBREQ, align 4
  %8 = call i32 @usbhs_read(%struct.usbhs_priv* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 8
  %11 = and i32 %10, 255
  %12 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 0
  %16 = and i32 %15, 255
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %20 = load i32, i32* @USBVAL, align 4
  %21 = call i32 @usbhs_read(%struct.usbhs_priv* %19, i32 %20)
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %26 = load i32, i32* @USBINDX, align 4
  %27 = call i32 @usbhs_read(%struct.usbhs_priv* %25, i32 %26)
  %28 = call i8* @cpu_to_le16(i32 %27)
  %29 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.usbhs_priv*, %struct.usbhs_priv** %3, align 8
  %32 = load i32, i32* @USBLENG, align 4
  %33 = call i32 @usbhs_read(%struct.usbhs_priv* %31, i32 %32)
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  ret void
}

declare dso_local i32 @usbhs_read(%struct.usbhs_priv*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
