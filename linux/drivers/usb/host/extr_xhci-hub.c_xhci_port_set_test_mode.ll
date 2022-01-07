; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_port_set_test_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_port_set_test_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.xhci_port** }
%struct.xhci_port = type { i64 }

@PORTPMSC = common dso_local global i64 0, align 8
@PORT_TEST_MODE_SHIFT = common dso_local global i64 0, align 8
@TEST_FORCE_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i64, i64)* @xhci_port_set_test_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_port_set_test_mode(%struct.xhci_hcd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xhci_port*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.xhci_port**, %struct.xhci_port*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.xhci_port*, %struct.xhci_port** %12, i64 %13
  %15 = load %struct.xhci_port*, %struct.xhci_port** %14, align 8
  store %struct.xhci_port* %15, %struct.xhci_port** %8, align 8
  %16 = load %struct.xhci_port*, %struct.xhci_port** %8, align 8
  %17 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PORTPMSC, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i64 @readl(i64 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @PORT_TEST_MODE_SHIFT, align 8
  %24 = shl i64 %22, %23
  %25 = load i64, i64* %7, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load %struct.xhci_port*, %struct.xhci_port** %8, align 8
  %29 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PORTPMSC, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i64 %27, i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %36 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @TEST_FORCE_EN, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = call i32 @xhci_start(%struct.xhci_hcd* %41)
  br label %43

43:                                               ; preds = %40, %3
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @xhci_start(%struct.xhci_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
