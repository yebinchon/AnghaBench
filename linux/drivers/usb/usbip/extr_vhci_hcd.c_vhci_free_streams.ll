; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_free_streams.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vhci_hcd.c_vhci_free_streams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"vhci_free_streams not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)* @vhci_free_streams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhci_free_streams(%struct.usb_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint** %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.usb_hcd*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.usb_host_endpoint**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %6, align 8
  store %struct.usb_device* %1, %struct.usb_device** %7, align 8
  store %struct.usb_host_endpoint** %2, %struct.usb_host_endpoint*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %6, align 8
  %12 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
