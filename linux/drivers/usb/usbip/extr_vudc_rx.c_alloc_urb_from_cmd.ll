; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_alloc_urb_from_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_rx.c_alloc_urb_from_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64, i32*, i32, i32 }
%struct.usbip_header = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBIP_CMD_SUBMIT = common dso_local global i32 0, align 4
@USBIP_DIR_IN = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb**, %struct.usbip_header*, i64)* @alloc_urb_from_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_urb_from_cmd(%struct.urb** %0, %struct.usbip_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb**, align 8
  %6 = alloca %struct.usbip_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.urb*, align 8
  store %struct.urb** %0, %struct.urb*** %5, align 8
  store %struct.usbip_header* %1, %struct.usbip_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.usbip_header*, %struct.usbip_header** %6, align 8
  %14 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.urb* @usb_alloc_urb(i32 %17, i32 %18)
  store %struct.urb* %19, %struct.urb** %8, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %21)
  store %struct.urb* %22, %struct.urb** %8, align 8
  br label %23

23:                                               ; preds = %20, %12
  %24 = load %struct.urb*, %struct.urb** %8, align 8
  %25 = icmp ne %struct.urb* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %93

27:                                               ; preds = %23
  %28 = load %struct.usbip_header*, %struct.usbip_header** %6, align 8
  %29 = load %struct.urb*, %struct.urb** %8, align 8
  %30 = load i32, i32* @USBIP_CMD_SUBMIT, align 4
  %31 = call i32 @usbip_pack_pdu(%struct.usbip_header* %28, %struct.urb* %29, i32 %30, i32 0)
  %32 = load %struct.urb*, %struct.urb** %8, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %27
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32* @kzalloc(i64 %39, i32 %40)
  %42 = load %struct.urb*, %struct.urb** %8, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.urb*, %struct.urb** %8, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %90

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.usbip_header*, %struct.usbip_header** %6, align 8
  %52 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @kmemdup(i32* %54, i32 8, i32 %55)
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.urb*, %struct.urb** %8, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %83

64:                                               ; preds = %50
  %65 = load %struct.usbip_header*, %struct.usbip_header** %6, align 8
  %66 = getelementptr inbounds %struct.usbip_header, %struct.usbip_header* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @USBIP_DIR_IN, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @USB_DIR_IN, align 4
  br label %75

73:                                               ; preds = %64
  %74 = load i32, i32* @USB_DIR_OUT, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.urb*, %struct.urb** %8, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.urb*, %struct.urb** %8, align 8
  %82 = load %struct.urb**, %struct.urb*** %5, align 8
  store %struct.urb* %81, %struct.urb** %82, align 8
  store i32 0, i32* %4, align 4
  br label %96

83:                                               ; preds = %63
  %84 = load %struct.urb*, %struct.urb** %8, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @kfree(i32* %86)
  %88 = load %struct.urb*, %struct.urb** %8, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %83, %48
  %91 = load %struct.urb*, %struct.urb** %8, align 8
  %92 = call i32 @usb_free_urb(%struct.urb* %91)
  br label %93

93:                                               ; preds = %90, %26
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %93, %75
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usbip_pack_pdu(%struct.usbip_header*, %struct.urb*, i32, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
