; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"MWI active\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Finished xhci_pci_reinit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.pci_dev*)* @xhci_pci_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_reinit(%struct.xhci_hcd* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %6 = call i32 @pci_set_mwi(%struct.pci_dev* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %10 = call i32 @xhci_dbg(%struct.xhci_hcd* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %13 = call i32 @xhci_dbg(%struct.xhci_hcd* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @pci_set_mwi(%struct.pci_dev*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
