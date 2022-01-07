; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_alloc_iso_desc_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_usbip_common.c_usbip_alloc_iso_desc_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_iso_packet_descriptor = type { i32 }
%struct.urb = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usbip_iso_packet_descriptor* @usbip_alloc_iso_desc_pdu(%struct.urb* %0, i32* %1) #0 {
  %3 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbip_iso_packet_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.usbip_iso_packet_descriptor* @kzalloc(i32 %17, i32 %18)
  store %struct.usbip_iso_packet_descriptor* %19, %struct.usbip_iso_packet_descriptor** %6, align 8
  %20 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %6, align 8
  %21 = icmp ne %struct.usbip_iso_packet_descriptor* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.usbip_iso_packet_descriptor* null, %struct.usbip_iso_packet_descriptor** %3, align 8
  br label %52

23:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %45, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %24
  %29 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %29, i64 %31
  %33 = load %struct.urb*, %struct.urb** %4, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor* %32, i32* %38, i32 1)
  %40 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usbip_iso_packet_descriptor, %struct.usbip_iso_packet_descriptor* %40, i64 %42
  %44 = call i32 @usbip_iso_packet_correct_endian(%struct.usbip_iso_packet_descriptor* %43, i32 1)
  br label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %6, align 8
  store %struct.usbip_iso_packet_descriptor* %51, %struct.usbip_iso_packet_descriptor** %3, align 8
  br label %52

52:                                               ; preds = %48, %22
  %53 = load %struct.usbip_iso_packet_descriptor*, %struct.usbip_iso_packet_descriptor** %3, align 8
  ret %struct.usbip_iso_packet_descriptor* %53
}

declare dso_local %struct.usbip_iso_packet_descriptor* @kzalloc(i32, i32) #1

declare dso_local i32 @usbip_pack_iso(%struct.usbip_iso_packet_descriptor*, i32*, i32) #1

declare dso_local i32 @usbip_iso_packet_correct_endian(%struct.usbip_iso_packet_descriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
