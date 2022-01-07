; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_get_usb3_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_get_usb3_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.xhci_bus_state }
%struct.xhci_bus_state = type { i32 }
%struct.xhci_hcd = type { i32 }

@PORT_PLS_MASK = common dso_local global i32 0, align 4
@PORT_PLC = common dso_local global i32 0, align 4
@XDEV_RESUME = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_LINK_STATE = common dso_local global i32 0, align 4
@PORT_WRC = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_BH_RESET = common dso_local global i32 0, align 4
@PORT_CEC = common dso_local global i32 0, align 4
@USB_PORT_STAT_C_CONFIG_ERROR = common dso_local global i32 0, align 4
@PORT_POWER = common dso_local global i32 0, align 4
@USB_SS_PORT_STAT_POWER = common dso_local global i32 0, align 4
@XDEV_U0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_port*, i32*, i32)* @xhci_get_usb3_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_get_usb3_port_status(%struct.xhci_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.xhci_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_bus_state*, align 8
  %8 = alloca %struct.xhci_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xhci_port* %0, %struct.xhci_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.xhci_port*, %struct.xhci_port** %4, align 8
  %12 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.xhci_bus_state* %14, %struct.xhci_bus_state** %7, align 8
  %15 = load %struct.xhci_port*, %struct.xhci_port** %4, align 8
  %16 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.xhci_hcd* @hcd_to_xhci(i32 %19)
  store %struct.xhci_hcd* %20, %struct.xhci_hcd** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PORT_PLS_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.xhci_port*, %struct.xhci_port** %4, align 8
  %25 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PORT_PLC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @XDEV_RESUME, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @USB_PORT_STAT_C_LINK_STATE, align 4
  %37 = shl i32 %36, 16
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %31, %3
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PORT_WRC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @USB_PORT_STAT_C_BH_RESET, align 4
  %48 = shl i32 %47, 16
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PORT_CEC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load i32, i32* @USB_PORT_STAT_C_CONFIG_ERROR, align 4
  %59 = shl i32 %58, 16
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %52
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PORT_POWER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load i32, i32* @USB_SS_PORT_STAT_POWER, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @XDEV_U0, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %7, align 8
  %81 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %76, %68
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @xhci_hub_report_usb3_link_state(%struct.xhci_hcd* %86, i32* %87, i32 %88)
  %90 = load %struct.xhci_hcd*, %struct.xhci_hcd** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @xhci_del_comp_mod_timer(%struct.xhci_hcd* %90, i32 %91, i32 %92)
  ret void
}

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(i32) #1

declare dso_local i32 @xhci_hub_report_usb3_link_state(%struct.xhci_hcd*, i32*, i32) #1

declare dso_local i32 @xhci_del_comp_mod_timer(%struct.xhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
