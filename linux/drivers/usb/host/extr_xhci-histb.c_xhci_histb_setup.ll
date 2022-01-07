; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hcd_histb = type { i32 }

@xhci_histb_quirks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @xhci_histb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_histb_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.xhci_hcd_histb*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.xhci_hcd_histb* @hcd_to_histb(%struct.usb_hcd* %6)
  store %struct.xhci_hcd_histb* %7, %struct.xhci_hcd_histb** %4, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %9 = call i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %4, align 8
  %13 = call i32 @xhci_histb_config(%struct.xhci_hcd_histb* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %21 = load i32, i32* @xhci_histb_quirks, align 4
  %22 = call i32 @xhci_gen_setup(%struct.usb_hcd* %20, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.xhci_hcd_histb* @hcd_to_histb(%struct.usb_hcd*) #1

declare dso_local i64 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_histb_config(%struct.xhci_hcd_histb*) #1

declare dso_local i32 @xhci_gen_setup(%struct.usb_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
