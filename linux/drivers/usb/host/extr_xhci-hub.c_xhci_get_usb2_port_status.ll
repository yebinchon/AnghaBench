; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_get_usb2_port_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_get_usb2_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xhci_bus_state }
%struct.xhci_bus_state = type { i32, i32, i32, i64* }

@PORT_PLS_MASK = common dso_local global i32 0, align 4
@PORT_POWER = common dso_local global i32 0, align 4
@USB_PORT_STAT_POWER = common dso_local global i32 0, align 4
@XDEV_U3 = common dso_local global i32 0, align 4
@USB_PORT_STAT_SUSPEND = common dso_local global i32 0, align 4
@XDEV_U2 = common dso_local global i32 0, align 4
@USB_PORT_STAT_L1 = common dso_local global i32 0, align 4
@XDEV_U0 = common dso_local global i32 0, align 4
@XDEV_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_port*, i32*, i32, i64)* @xhci_get_usb2_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_get_usb2_port_status(%struct.xhci_port* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.xhci_port*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.xhci_bus_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xhci_port* %0, %struct.xhci_port** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %14 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.xhci_bus_state* %16, %struct.xhci_bus_state** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @PORT_PLS_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %21 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PORT_POWER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %4
  %28 = load i32, i32* @USB_PORT_STAT_POWER, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @XDEV_U3, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load i32, i32* @USB_PORT_STAT_SUSPEND, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %35, %27
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @XDEV_U2, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @USB_PORT_STAT_L1, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @XDEV_U0, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %49
  %54 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %9, align 8
  %55 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %9, align 8
  %62 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %61, i32 0, i32 2
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  %64 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %9, align 8
  %65 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %53
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %9, align 8
  %76 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %11, align 4
  %80 = shl i32 1, %79
  %81 = load %struct.xhci_bus_state*, %struct.xhci_bus_state** %9, align 8
  %82 = getelementptr inbounds %struct.xhci_bus_state, %struct.xhci_bus_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %71, %53
  br label %86

86:                                               ; preds = %85, %49
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @XDEV_RESUME, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load %struct.xhci_port*, %struct.xhci_port** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i64, i64* %8, align 8
  %95 = call i32 @xhci_handle_usb2_port_link_resume(%struct.xhci_port* %91, i32* %92, i32 %93, i64 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %101

99:                                               ; preds = %90
  br label %100

100:                                              ; preds = %99, %86
  br label %101

101:                                              ; preds = %98, %100, %4
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @xhci_handle_usb2_port_link_resume(%struct.xhci_port*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
