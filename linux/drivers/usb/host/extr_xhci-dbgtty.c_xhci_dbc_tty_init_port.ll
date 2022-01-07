; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-dbgtty.c_xhci_dbc_tty_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.dbc_port = type { i64, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@dbc_rx_push = common dso_local global i32 0, align 4
@dbc_port_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.dbc_port*)* @xhci_dbc_tty_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_dbc_tty_init_port(%struct.xhci_hcd* %0, %struct.dbc_port* %1) #0 {
  %3 = alloca %struct.xhci_hcd*, align 8
  %4 = alloca %struct.dbc_port*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %3, align 8
  store %struct.dbc_port* %1, %struct.dbc_port** %4, align 8
  %5 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %6 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %5, i32 0, i32 1
  %7 = call i32 @tty_port_init(%struct.TYPE_2__* %6)
  %8 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %9 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %8, i32 0, i32 8
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %12 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %11, i32 0, i32 7
  %13 = load i32, i32* @dbc_rx_push, align 4
  %14 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %15 = ptrtoint %struct.dbc_port* %14 to i64
  %16 = call i32 @tasklet_init(i32* %12, i32 %13, i64 %15)
  %17 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %18 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %17, i32 0, i32 6
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %21 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %20, i32 0, i32 5
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %24 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %23, i32 0, i32 4
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %27 = call i32 @get_in_ep(%struct.xhci_hcd* %26)
  %28 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %29 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %3, align 8
  %31 = call i32 @get_out_ep(%struct.xhci_hcd* %30)
  %32 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %33 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %35 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32* @dbc_port_ops, i32** %36, align 8
  %37 = load %struct.dbc_port*, %struct.dbc_port** %4, align 8
  %38 = getelementptr inbounds %struct.dbc_port, %struct.dbc_port* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @tty_port_init(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_in_ep(%struct.xhci_hcd*) #1

declare dso_local i32 @get_out_ep(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
