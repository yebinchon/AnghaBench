; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_setup_isoc_packet_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_setup_isoc_packet_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer_packet_info_hwaiso = type { i8**, i8*, i32 }
%struct.wa_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32 }
%struct.wa_seg = type { i32, i32 }

@WA_XFER_ISO_PACKET_INFO = common dso_local global i32 0, align 4
@PacketLength = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wa_xfer_packet_info_hwaiso*, %struct.wa_xfer*, %struct.wa_seg*)* @__wa_setup_isoc_packet_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wa_setup_isoc_packet_descr(%struct.wa_xfer_packet_info_hwaiso* %0, %struct.wa_xfer* %1, %struct.wa_seg* %2) #0 {
  %4 = alloca %struct.wa_xfer_packet_info_hwaiso*, align 8
  %5 = alloca %struct.wa_xfer*, align 8
  %6 = alloca %struct.wa_seg*, align 8
  %7 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wa_xfer_packet_info_hwaiso* %0, %struct.wa_xfer_packet_info_hwaiso** %4, align 8
  store %struct.wa_xfer* %1, %struct.wa_xfer** %5, align 8
  store %struct.wa_seg* %2, %struct.wa_seg** %6, align 8
  %10 = load %struct.wa_xfer*, %struct.wa_xfer** %5, align 8
  %11 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  store %struct.usb_iso_packet_descriptor* %14, %struct.usb_iso_packet_descriptor** %7, align 8
  %15 = load i32, i32* @WA_XFER_ISO_PACKET_INFO, align 4
  %16 = load %struct.wa_xfer_packet_info_hwaiso*, %struct.wa_xfer_packet_info_hwaiso** %4, align 8
  %17 = getelementptr inbounds %struct.wa_xfer_packet_info_hwaiso, %struct.wa_xfer_packet_info_hwaiso* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.wa_xfer_packet_info_hwaiso*, %struct.wa_xfer_packet_info_hwaiso** %4, align 8
  %19 = load i32, i32* @PacketLength, align 4
  %20 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %21 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @struct_size(%struct.wa_xfer_packet_info_hwaiso* %18, i32 %19, i32 %22)
  %24 = call i8* @cpu_to_le16(i32 %23)
  %25 = load %struct.wa_xfer_packet_info_hwaiso*, %struct.wa_xfer_packet_info_hwaiso** %4, align 8
  %26 = getelementptr inbounds %struct.wa_xfer_packet_info_hwaiso, %struct.wa_xfer_packet_info_hwaiso* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %52, %3
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %30 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.wa_seg*, %struct.wa_seg** %6, align 8
  %36 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %9, align 4
  %39 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %39, i64 %41
  %43 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.wa_xfer_packet_info_hwaiso*, %struct.wa_xfer_packet_info_hwaiso** %4, align 8
  %47 = getelementptr inbounds %struct.wa_xfer_packet_info_hwaiso, %struct.wa_xfer_packet_info_hwaiso* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  store i8* %45, i8** %51, align 8
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %27

55:                                               ; preds = %27
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @struct_size(%struct.wa_xfer_packet_info_hwaiso*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
