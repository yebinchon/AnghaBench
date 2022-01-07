; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_priv_resume_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-plat.c_xhci_priv_resume_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_plat_priv = type { i32 (%struct.usb_hcd.0*)* }
%struct.usb_hcd.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @xhci_priv_resume_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_priv_resume_quirk(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.xhci_plat_priv*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %6 = call %struct.xhci_plat_priv* @hcd_to_xhci_priv(%struct.usb_hcd* %5)
  store %struct.xhci_plat_priv* %6, %struct.xhci_plat_priv** %4, align 8
  %7 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %4, align 8
  %8 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %7, i32 0, i32 0
  %9 = load i32 (%struct.usb_hcd.0*)*, i32 (%struct.usb_hcd.0*)** %8, align 8
  %10 = icmp ne i32 (%struct.usb_hcd.0*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.xhci_plat_priv*, %struct.xhci_plat_priv** %4, align 8
  %14 = getelementptr inbounds %struct.xhci_plat_priv, %struct.xhci_plat_priv* %13, i32 0, i32 0
  %15 = load i32 (%struct.usb_hcd.0*)*, i32 (%struct.usb_hcd.0*)** %14, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %17 = bitcast %struct.usb_hcd* %16 to %struct.usb_hcd.0*
  %18 = call i32 %15(%struct.usb_hcd.0* %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local %struct.xhci_plat_priv* @hcd_to_xhci_priv(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
