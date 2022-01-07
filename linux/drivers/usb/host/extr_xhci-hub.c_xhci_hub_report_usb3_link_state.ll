; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_hub_report_usb3_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_hub_report_usb3_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }

@PORT_PLS_MASK = common dso_local global i32 0, align 4
@XDEV_RESUME = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_U3 = common dso_local global i32 0, align 4
@PORT_CAS = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_COMP_MOD = common dso_local global i32 0, align 4
@USB_SS_PORT_LS_SS_INACTIVE = common dso_local global i32 0, align 4
@USB_PORT_STAT_CONNECTION = common dso_local global i32 0, align 4
@XHCI_COMP_MODE_QUIRK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, i32*, i32)* @xhci_hub_report_usb3_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_hub_report_usb3_link_state(%struct.xhci_hcd* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @PORT_PLS_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @XDEV_RESUME, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @USB_SS_PORT_LS_U3, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, i32* %16, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @PORT_CAS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @USB_SS_PORT_LS_SS_INACTIVE, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %54

38:                                               ; preds = %19
  %39 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %40 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XHCI_COMP_MODE_QUIRK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @USB_SS_PORT_LS_COMP_MOD, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* @USB_PORT_STAT_CONNECTION, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %45, %38
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
