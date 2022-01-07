; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_buf_in_urb_isoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-xfer.c___wa_populate_buf_in_urb_isoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wahc = type { i32 }
%struct.urb = type { i64, i32, %struct.wa_seg*, i64, i32*, i32*, i32, i64, i32 }
%struct.wa_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i32, i64 }
%struct.wa_seg = type { i32, i32, i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wahc*, %struct.urb*, %struct.wa_xfer*, %struct.wa_seg*)* @__wa_populate_buf_in_urb_isoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wa_populate_buf_in_urb_isoc(%struct.wahc* %0, %struct.urb* %1, %struct.wa_xfer* %2, %struct.wa_seg* %3) #0 {
  %5 = alloca %struct.wahc*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca %struct.wa_xfer*, align 8
  %8 = alloca %struct.wa_seg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %17 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.wahc* %0, %struct.wahc** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store %struct.wa_xfer* %2, %struct.wa_xfer** %7, align 8
  store %struct.wa_seg* %3, %struct.wa_seg** %8, align 8
  %18 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %19 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %22 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.wa_xfer*, %struct.wa_xfer** %7, align 8
  %27 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %29, align 8
  store %struct.usb_iso_packet_descriptor* %30, %struct.usb_iso_packet_descriptor** %13, align 8
  %31 = load %struct.wahc*, %struct.wahc** %5, align 8
  %32 = getelementptr inbounds %struct.wahc, %struct.wahc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_endpoint_maxp(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %44 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %95, %4
  store i32 0, i32* %15, align 4
  %47 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %47, i64 %49
  store %struct.usb_iso_packet_descriptor* %50, %struct.usb_iso_packet_descriptor** %16, align 8
  %51 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %16, align 8
  %52 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %62 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %46
  %66 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %66, i64 %68
  store %struct.usb_iso_packet_descriptor* %69, %struct.usb_iso_packet_descriptor** %17, align 8
  %70 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %16, align 8
  %71 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %16, align 8
  %74 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %72, %76
  %78 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %17, align 8
  %79 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %65
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %65
  br label %84

84:                                               ; preds = %83, %46
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %16, align 8
  %90 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %14, align 4
  %93 = srem i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br label %95

95:                                               ; preds = %88, %85
  %96 = phi i1 [ false, %85 ], [ %94, %88 ]
  br i1 %96, label %46, label %97

97:                                               ; preds = %95
  %98 = load %struct.urb*, %struct.urb** %6, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.wa_xfer*, %struct.wa_xfer** %7, align 8
  %101 = getelementptr inbounds %struct.wa_xfer, %struct.wa_xfer* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %13, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %105, i64 %107
  %109 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %104, %110
  %112 = load %struct.urb*, %struct.urb** %6, align 8
  %113 = getelementptr inbounds %struct.urb, %struct.urb* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.urb*, %struct.urb** %6, align 8
  %116 = getelementptr inbounds %struct.urb, %struct.urb* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 8
  %117 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %118 = load %struct.urb*, %struct.urb** %6, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.urb*, %struct.urb** %6, align 8
  %123 = getelementptr inbounds %struct.urb, %struct.urb* %122, i32 0, i32 5
  store i32* null, i32** %123, align 8
  %124 = load %struct.urb*, %struct.urb** %6, align 8
  %125 = getelementptr inbounds %struct.urb, %struct.urb* %124, i32 0, i32 4
  store i32* null, i32** %125, align 8
  %126 = load %struct.urb*, %struct.urb** %6, align 8
  %127 = getelementptr inbounds %struct.urb, %struct.urb* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %129 = load %struct.urb*, %struct.urb** %6, align 8
  %130 = getelementptr inbounds %struct.urb, %struct.urb* %129, i32 0, i32 2
  store %struct.wa_seg* %128, %struct.wa_seg** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.wa_seg*, %struct.wa_seg** %8, align 8
  %133 = getelementptr inbounds %struct.wa_seg, %struct.wa_seg* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %131, %134
  ret i32 %135
}

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
