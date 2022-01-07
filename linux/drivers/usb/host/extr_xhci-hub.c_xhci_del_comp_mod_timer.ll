; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_del_comp_mod_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_del_comp_mod_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PORT_PLS_MASK = common dso_local global i64 0, align 8
@XDEV_U0 = common dso_local global i64 0, align 8
@XHCI_COMP_MODE_QUIRK = common dso_local global i32 0, align 4
@trace_xhci_dbg_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"All USB3 ports have entered U0 already!\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Compliance Mode Recovery Timer Deleted.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i64, i32)* @xhci_del_comp_mod_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_del_comp_mod_timer(%struct.xhci_hcd* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @PORT_PLS_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @XDEV_U0, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %23 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XHCI_COMP_MODE_QUIRK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  br label %62

29:                                               ; preds = %3
  %30 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %31 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = shl i32 1, %39
  %41 = sext i32 %40 to i64
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %38
  %52 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %53 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %52, i32 0, i32 2
  %54 = call i32 @del_timer_sync(i32* %53)
  %55 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %56 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %57 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %55, i32 %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %59 = load i32, i32* @trace_xhci_dbg_quirks, align 4
  %60 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %58, i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %51, %38
  br label %62

62:                                               ; preds = %28, %61, %35, %29
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
