; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgcap.c_xhci_dbc_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }

@dev_attr_dbc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_dbc_exit(%struct.xhci_hcd* %0) #0 {
  %2 = alloca %struct.xhci_hcd*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %2, align 8
  %4 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %5 = call %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd* %4)
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = call i32 @device_remove_file(%struct.device* %15, i32* @dev_attr_dbc)
  %17 = call i32 (...) @xhci_dbc_tty_unregister_driver()
  %18 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %19 = call i32 @xhci_dbc_stop(%struct.xhci_hcd* %18)
  %20 = load %struct.xhci_hcd*, %struct.xhci_hcd** %2, align 8
  %21 = call i32 @xhci_do_dbc_exit(%struct.xhci_hcd* %20)
  br label %22

22:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

declare dso_local i32 @xhci_dbc_tty_unregister_driver(...) #1

declare dso_local i32 @xhci_dbc_stop(%struct.xhci_hcd*) #1

declare dso_local i32 @xhci_do_dbc_exit(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
