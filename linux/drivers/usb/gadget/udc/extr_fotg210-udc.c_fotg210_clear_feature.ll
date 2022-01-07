; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_clear_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_clear_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { %struct.fotg210_ep** }
%struct.fotg210_ep = type { i32, i32, i32 }
%struct.usb_ctrlrequest = type { i64, i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*, %struct.usb_ctrlrequest*)* @fotg210_clear_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_clear_feature(%struct.fotg210_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fotg210_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca %struct.fotg210_ep*, align 8
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %6 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %7 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %6, i32 0, i32 0
  %8 = load %struct.fotg210_ep**, %struct.fotg210_ep*** %7, align 8
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %13 = and i64 %11, %12
  %14 = getelementptr inbounds %struct.fotg210_ep*, %struct.fotg210_ep** %8, i64 %13
  %15 = load %struct.fotg210_ep*, %struct.fotg210_ep** %14, align 8
  store %struct.fotg210_ep* %15, %struct.fotg210_ep** %5, align 8
  %16 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %17 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @USB_RECIP_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %55 [
    i32 130, label %21
    i32 128, label %24
    i32 129, label %27
  ]

21:                                               ; preds = %2
  %22 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %23 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %22)
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %26 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %25)
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.fotg210_ep*, %struct.fotg210_ep** %5, align 8
  %36 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %41 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %40)
  br label %58

42:                                               ; preds = %34
  %43 = load %struct.fotg210_ep*, %struct.fotg210_ep** %5, align 8
  %44 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.fotg210_ep*, %struct.fotg210_ep** %5, align 8
  %49 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %48, i32 0, i32 0
  %50 = call i32 @fotg210_set_halt_and_wedge(i32* %49, i32 0, i32 0)
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %54 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %53)
  br label %58

55:                                               ; preds = %2
  %56 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %57 = call i32 @fotg210_request_error(%struct.fotg210_udc* %56)
  br label %58

58:                                               ; preds = %55, %52, %39, %24, %21
  ret void
}

declare dso_local i32 @fotg210_set_cxdone(%struct.fotg210_udc*) #1

declare dso_local i32 @fotg210_set_halt_and_wedge(i32*, i32, i32) #1

declare dso_local i32 @fotg210_request_error(%struct.fotg210_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
