; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xhci_hcd = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@XHCI_SPURIOUS_REBOOT = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_WAKEUP = common dso_local global i32 0, align 4
@trace_xhci_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"xhci_shutdown completed - status = %x\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*)* @xhci_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_shutdown(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.xhci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %5 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %4)
  store %struct.xhci_hcd* %5, %struct.xhci_hcd** %3, align 8
  %6 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %7 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XHCI_SPURIOUS_REBOOT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @to_pci_dev(i32 %16)
  %18 = call i32 @usb_disable_xhci_ports(i32 %17)
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_irq(i32* %21)
  %23 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %24 = call i32 @xhci_halt(%struct.xhci_hcd* %23)
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XHCI_SPURIOUS_WAKEUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %33 = call i32 @xhci_reset(%struct.xhci_hcd* %32)
  br label %34

34:                                               ; preds = %31, %19
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %39 = call i32 @xhci_cleanup_msix(%struct.xhci_hcd* %38)
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %41 = load i32, i32* @trace_xhci_dbg_init, align 4
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @readl(i32* %45)
  %47 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %40, i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %49 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XHCI_SPURIOUS_WAKEUP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %34
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @to_pci_dev(i32 %58)
  %60 = load i32, i32* @PCI_D3hot, align 4
  %61 = call i32 @pci_set_power_state(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %34
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @usb_disable_xhci_ports(i32) #1

declare dso_local i32 @to_pci_dev(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @xhci_halt(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_reset(%struct.xhci_hcd*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @xhci_cleanup_msix(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
