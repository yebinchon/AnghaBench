; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_process_req_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_process_req_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { %struct.s3c_hsudc_ep* }
%struct.s3c_hsudc_ep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.s3c_hsudc_req = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i64, i32* }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc*, %struct.usb_ctrlrequest*)* @s3c_hsudc_process_req_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_process_req_status(%struct.s3c_hsudc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.s3c_hsudc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.s3c_hsudc_ep*, align 8
  %6 = alloca %struct.s3c_hsudc_req, align 8
  %7 = alloca %struct.s3c_hsudc_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %10 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %3, align 8
  %11 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %10, i32 0, i32 0
  %12 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %11, align 8
  %13 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %12, i64 0
  store %struct.s3c_hsudc_ep* %13, %struct.s3c_hsudc_ep** %5, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @USB_RECIP_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %42 [
    i32 130, label %19
    i32 128, label %21
    i32 129, label %23
  ]

19:                                               ; preds = %2
  %20 = call i32 @cpu_to_le16(i32 0)
  store i32 %20, i32* %8, align 4
  br label %42

21:                                               ; preds = %2
  %22 = call i32 @cpu_to_le16(i32 0)
  store i32 %22, i32* %8, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le16_to_cpu(i32 %26)
  %28 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %3, align 8
  %31 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %30, i32 0, i32 0
  %32 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %32, i64 %33
  store %struct.s3c_hsudc_ep* %34, %struct.s3c_hsudc_ep** %7, align 8
  %35 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %7, align 8
  %36 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = call i32 @cpu_to_le16(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %2, %23, %21, %19
  %43 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %6, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %6, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  %47 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %6, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32* %8, i32** %48, align 8
  %49 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %6, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.s3c_hsudc_req, %struct.s3c_hsudc_req* %6, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32* null, i32** %52, align 8
  %53 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %5, align 8
  %54 = call i32 @s3c_hsudc_write_fifo(%struct.s3c_hsudc_ep* %53, %struct.s3c_hsudc_req* %6)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @s3c_hsudc_write_fifo(%struct.s3c_hsudc_ep*, %struct.s3c_hsudc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
