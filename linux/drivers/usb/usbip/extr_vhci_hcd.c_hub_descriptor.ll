; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub_descriptor = type { i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.usb_hub_descriptor* }

@USB_DT_HUB = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_LPSM = common dso_local global i32 0, align 4
@HUB_CHAR_COMMON_OCPM = common dso_local global i32 0, align 4
@VHCI_HC_PORTS = common dso_local global i64 0, align 8
@USB_MAXCHILDREN = common dso_local global i64 0, align 8
@USB_DT_HUB_NONVAR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hub_descriptor*)* @hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hub_descriptor(%struct.usb_hub_descriptor* %0) #0 {
  %2 = alloca %struct.usb_hub_descriptor*, align 8
  %3 = alloca i32, align 4
  store %struct.usb_hub_descriptor* %0, %struct.usb_hub_descriptor** %2, align 8
  %4 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %5 = call i32 @memset(%struct.usb_hub_descriptor* %4, i32 0, i32 32)
  %6 = load i32, i32* @USB_DT_HUB, align 4
  %7 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @HUB_CHAR_INDV_PORT_LPSM, align 4
  %10 = load i32, i32* @HUB_CHAR_COMMON_OCPM, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @cpu_to_le16(i32 %11)
  %13 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %14 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i64, i64* @VHCI_HC_PORTS, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %18 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @VHCI_HC_PORTS, align 8
  %20 = load i64, i64* @USB_MAXCHILDREN, align 8
  %21 = icmp sgt i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %25 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 %26, 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  %29 = load i64, i64* @USB_DT_HUB_NONVAR_SIZE, align 8
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 2, %30
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %29, %32
  %34 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %35 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %37 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %39, align 8
  %41 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %40, i64 0
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @memset(%struct.usb_hub_descriptor* %41, i32 0, i32 %42)
  %44 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %2, align 8
  %45 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %48, i64 %50
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @memset(%struct.usb_hub_descriptor* %51, i32 255, i32 %52)
  ret void
}

declare dso_local i32 @memset(%struct.usb_hub_descriptor*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
