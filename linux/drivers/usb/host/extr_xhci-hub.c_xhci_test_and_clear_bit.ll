; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_test_and_clear_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_test_and_clear_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xhci_test_and_clear_bit(%struct.xhci_hcd* %0, %struct.xhci_port* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.xhci_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.xhci_port* %1, %struct.xhci_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %9 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readl(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @xhci_port_state_to_neutral(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %24 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %16, %3
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @xhci_port_state_to_neutral(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
