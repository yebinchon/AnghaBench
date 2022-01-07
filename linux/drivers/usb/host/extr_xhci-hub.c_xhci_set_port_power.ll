; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_set_port_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-hub.c_xhci_set_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.xhci_hub = type { %struct.xhci_port** }
%struct.xhci_port = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"set port power %d-%d %s, portsc: 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@PORT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xhci_hcd*, %struct.usb_hcd*, i64, i32, i64*)* @xhci_set_port_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_set_port_power(%struct.xhci_hcd* %0, %struct.usb_hcd* %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.xhci_hcd*, align 8
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.xhci_hub*, align 8
  %12 = alloca %struct.xhci_port*, align 8
  %13 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %6, align 8
  store %struct.usb_hcd* %1, %struct.usb_hcd** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64* %4, i64** %10, align 8
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %15 = call %struct.xhci_hub* @xhci_get_rhub(%struct.usb_hcd* %14)
  store %struct.xhci_hub* %15, %struct.xhci_hub** %11, align 8
  %16 = load %struct.xhci_hub*, %struct.xhci_hub** %11, align 8
  %17 = getelementptr inbounds %struct.xhci_hub, %struct.xhci_hub* %16, i32 0, i32 0
  %18 = load %struct.xhci_port**, %struct.xhci_port*** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.xhci_port*, %struct.xhci_port** %18, i64 %19
  %21 = load %struct.xhci_port*, %struct.xhci_port** %20, align 8
  store %struct.xhci_port* %21, %struct.xhci_port** %12, align 8
  %22 = load %struct.xhci_port*, %struct.xhci_port** %12, align 8
  %23 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @xhci_dbg(%struct.xhci_hcd* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %32, i8* %36, i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @xhci_port_state_to_neutral(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %5
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PORT_POWER, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.xhci_port*, %struct.xhci_port** %12, align 8
  %48 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writel(i32 %46, i32 %49)
  %51 = load %struct.xhci_port*, %struct.xhci_port** %12, align 8
  %52 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @readl(i32 %53)
  br label %64

55:                                               ; preds = %5
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @PORT_POWER, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = load %struct.xhci_port*, %struct.xhci_port** %12, align 8
  %61 = getelementptr inbounds %struct.xhci_port, %struct.xhci_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @writel(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %43
  %65 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %66 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %65, i32 0, i32 0
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %68)
  %70 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %71 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @usb_acpi_power_manageable(i32 %73, i64 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %64
  %79 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %80 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @usb_acpi_set_power_state(i32 %82, i64 %83, i32 %84)
  br label %86

86:                                               ; preds = %78, %64
  %87 = load %struct.xhci_hcd*, %struct.xhci_hcd** %6, align 8
  %88 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %87, i32 0, i32 0
  %89 = load i64*, i64** %10, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %88, i64 %90)
  ret void
}

declare dso_local %struct.xhci_hub* @xhci_get_rhub(%struct.usb_hcd*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, i64, i8*, i32) #1

declare dso_local i32 @xhci_port_state_to_neutral(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_acpi_power_manageable(i32, i64) #1

declare dso_local i32 @usb_acpi_set_power_state(i32, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
