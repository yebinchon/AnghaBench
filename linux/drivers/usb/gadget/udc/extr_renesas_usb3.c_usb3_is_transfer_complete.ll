; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_is_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_is_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.renesas_usb3_request = type { %struct.usb_request }
%struct.usb_request = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*)* @usb3_is_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_is_transfer_complete(%struct.renesas_usb3_ep* %0, %struct.renesas_usb3_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.renesas_usb3_ep*, align 8
  %5 = alloca %struct.renesas_usb3_request*, align 8
  %6 = alloca %struct.usb_request*, align 8
  store %struct.renesas_usb3_ep* %0, %struct.renesas_usb3_ep** %4, align 8
  store %struct.renesas_usb3_request* %1, %struct.renesas_usb3_request** %5, align 8
  %7 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %5, align 8
  %8 = getelementptr inbounds %struct.renesas_usb3_request, %struct.renesas_usb3_request* %7, i32 0, i32 0
  store %struct.usb_request* %8, %struct.usb_request** %6, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %10 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %18 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %36, label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %4, align 8
  %26 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %21
  %32 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %33 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %21, %13
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
