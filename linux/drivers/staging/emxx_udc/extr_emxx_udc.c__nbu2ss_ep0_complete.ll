; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c__nbu2ss_ep0_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i64 }
%struct.usb_ctrlrequest = type { i32, i64, i32, i32 }
%struct.nbu2ss_udc = type { %struct.usb_ctrlrequest }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_REQ_SET_FEATURE = common dso_local global i64 0, align 8
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i64 0, align 8
@USB_DEVICE_TEST_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @_nbu2ss_ep0_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nbu2ss_ep0_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  %10 = alloca %struct.nbu2ss_udc*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %11 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %12 = icmp ne %struct.usb_ep* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %15 = icmp ne %struct.usb_request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %2
  br label %67

17:                                               ; preds = %13
  %18 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %19 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.nbu2ss_udc*
  store %struct.nbu2ss_udc* %21, %struct.nbu2ss_udc** %10, align 8
  %22 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %10, align 8
  %23 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %22, i32 0, i32 0
  store %struct.usb_ctrlrequest* %23, %struct.usb_ctrlrequest** %9, align 8
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @USB_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %17
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %33 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_REQ_SET_FEATURE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @USB_RECIP_MASK, align 4
  %42 = and i32 %40, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %5, align 8
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @USB_RECIP_DEVICE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %37
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @USB_DEVICE_TEST_MODE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %57 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @le16_to_cpu(i32 %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = ashr i64 %60, 8
  store i64 %61, i64* %8, align 8
  %62 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @_nbu2ss_set_test_mode(%struct.nbu2ss_udc* %62, i64 %63)
  br label %65

65:                                               ; preds = %55, %51, %37
  br label %66

66:                                               ; preds = %65, %31
  br label %67

67:                                               ; preds = %16, %66, %17
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @_nbu2ss_set_test_mode(%struct.nbu2ss_udc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
