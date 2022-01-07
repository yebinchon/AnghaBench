; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_port = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PORT_PLS_MASK = common dso_local global i32 0, align 4
@PORT_LINK_STROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Set port %d-%d link state, portsc: 0x%x, write 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_set_link_state(%struct.xhci_hcd* %0, %struct.xhci_port* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_port* %1, %struct.xhci_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %10 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @readl(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @xhci_port_state_to_neutral(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @PORT_PLS_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @PORT_LINK_STROBE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %26 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @writel(i32 %24, i32 %27)
  %29 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %30 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %31 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %39 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @xhci_dbg(%struct.xhci_hcd* %29, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %37, i64 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @xhci_port_state_to_neutral(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
