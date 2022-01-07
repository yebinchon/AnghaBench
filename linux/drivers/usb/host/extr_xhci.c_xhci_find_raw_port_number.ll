; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_find_raw_port_number.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_find_raw_port_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.xhci_hub = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xhci_find_raw_port_number(%struct.usb_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xhci_hub*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.xhci_hub* @xhci_get_rhub(%struct.usb_hcd* %6)
  store %struct.xhci_hub* %7, %struct.xhci_hub** %5, align 8
  %8 = load %struct.xhci_hub*, %struct.xhci_hub** %5, align 8
  %9 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  ret i32 %18
}

declare dso_local %struct.xhci_hub* @xhci_get_rhub(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
