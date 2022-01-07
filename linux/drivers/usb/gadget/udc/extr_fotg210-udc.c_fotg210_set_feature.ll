; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_set_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_udc = type { i32* }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_udc*, %struct.usb_ctrlrequest*)* @fotg210_set_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_set_feature(%struct.fotg210_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.fotg210_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i64, align 8
  store %struct.fotg210_udc* %0, %struct.fotg210_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %6 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @USB_RECIP_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %40 [
    i32 130, label %11
    i32 128, label %14
    i32 129, label %17
  ]

11:                                               ; preds = %2
  %12 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %13 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %12)
  br label %43

14:                                               ; preds = %2
  %15 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %16 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %15)
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  %22 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %28 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @fotg210_set_epnstall(i32 %32)
  br label %37

34:                                               ; preds = %17
  %35 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %36 = call i32 @fotg210_set_cxstall(%struct.fotg210_udc* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %39 = call i32 @fotg210_set_cxdone(%struct.fotg210_udc* %38)
  br label %43

40:                                               ; preds = %2
  %41 = load %struct.fotg210_udc*, %struct.fotg210_udc** %3, align 8
  %42 = call i32 @fotg210_request_error(%struct.fotg210_udc* %41)
  br label %43

43:                                               ; preds = %40, %37, %14, %11
  ret void
}

declare dso_local i32 @fotg210_set_cxdone(%struct.fotg210_udc*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @fotg210_set_epnstall(i32) #1

declare dso_local i32 @fotg210_set_cxstall(%struct.fotg210_udc*) #1

declare dso_local i32 @fotg210_request_error(%struct.fotg210_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
