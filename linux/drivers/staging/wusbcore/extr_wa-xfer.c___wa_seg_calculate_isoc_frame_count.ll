; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_seg_calculate_isoc_frame_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_seg_calculate_isoc_frame_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_xfer = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i64, i64 }

@WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_xfer*, i32, i32*)* @__wa_seg_calculate_isoc_frame_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_seg_calculate_isoc_frame_count(%struct.wa_xfer* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.wa_xfer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.wa_xfer* %0, %struct.wa_xfer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %13 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %15, align 8
  store %struct.usb_iso_packet_descriptor* %16, %struct.usb_iso_packet_descriptor** %10, align 8
  br label %17

17:                                               ; preds = %83, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %20 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %28, i64 %30
  %32 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %27, %33
  %35 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %36 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br label %39

39:                                               ; preds = %25, %17
  %40 = phi i1 [ false, %17 ], [ %38, %25 ]
  br i1 %40, label %41, label %98

41:                                               ; preds = %39
  %42 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %43 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @WUSB_QUIRK_ALEREON_HWA_CONCAT_ISOC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %83

50:                                               ; preds = %41
  %51 = load %struct.wa_xfer*, %struct.wa_xfer** %4, align 8
  %52 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %60, i64 %63
  %65 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %67, i64 %70
  %72 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %66, %73
  %75 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %75, i64 %77
  %79 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %74, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %59
  br label %98

83:                                               ; preds = %59, %55, %50, %41
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %10, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %86, i64 %88
  %90 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %17

98:                                               ; preds = %82, %39
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
