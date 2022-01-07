; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_handle_reqfeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_handle_reqfeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { %struct.s3c_hsudc_ep* }
%struct.s3c_hsudc_ep = type { i32, i32 }
%struct.usb_ctrlrequest = type { i64, i64, i64, i32 }

@USB_REQ_SET_FEATURE = common dso_local global i64 0, align 8
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@USB_RECIP_ENDPOINT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c_hsudc*, %struct.usb_ctrlrequest*)* @s3c_hsudc_handle_reqfeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_handle_reqfeat(%struct.s3c_hsudc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c_hsudc*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.s3c_hsudc_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_REQ_SET_FEATURE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %19 = and i64 %17, %18
  store i64 %19, i64* %8, align 8
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_RECIP_ENDPOINT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %2
  %26 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %4, align 8
  %27 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %26, i32 0, i32 0
  %28 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %28, i64 %29
  store %struct.s3c_hsudc_ep* %30, %struct.s3c_hsudc_ep** %6, align 8
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le16_to_cpu(i32 %33)
  switch i32 %34, label %49 [
    i32 128, label %35
  ]

35:                                               ; preds = %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %40 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %35
  %44 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %45 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %44, i32 0, i32 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @s3c_hsudc_set_halt(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %38
  store i32 0, i32* %3, align 4
  br label %53

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %48
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @s3c_hsudc_set_halt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
