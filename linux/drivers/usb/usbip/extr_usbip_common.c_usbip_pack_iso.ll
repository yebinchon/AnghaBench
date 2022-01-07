; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_pack_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_pack_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbip_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor*, i32)* @usbip_pack_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbip_pack_iso(%struct.usbip_iso_packet_descriptor* %0, %struct.usb_iso_packet_descriptor* %1, i32 %2) #0 {
  %4 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %5 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.usbip_iso_packet_descriptor* %0, %struct.usbip_iso_packet_descriptor** %4, align 8
  store %struct.usb_iso_packet_descriptor* %1, %struct.usb_iso_packet_descriptor** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %11 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %14 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %16 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %19 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %24 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %51

30:                                               ; preds = %3
  %31 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %32 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %35 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %37 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %40 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %42 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %4, align 8
  %47 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %5, align 8
  %50 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %30, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
