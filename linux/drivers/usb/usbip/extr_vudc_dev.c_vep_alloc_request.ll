; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.usb_ep = type { i32 }
%struct.vrequest = type { %struct.usb_request, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_request* (%struct.usb_ep*, i32)* @vep_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_request* @vep_alloc_request(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_request*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vrequest*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %8 = icmp ne %struct.usb_ep* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.vrequest* @kzalloc(i32 8, i32 %11)
  store %struct.vrequest* %12, %struct.vrequest** %6, align 8
  %13 = load %struct.vrequest*, %struct.vrequest** %6, align 8
  %14 = icmp ne %struct.vrequest* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %22

16:                                               ; preds = %10
  %17 = load %struct.vrequest*, %struct.vrequest** %6, align 8
  %18 = getelementptr inbounds %struct.vrequest, %struct.vrequest* %17, i32 0, i32 1
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.vrequest*, %struct.vrequest** %6, align 8
  %21 = getelementptr inbounds %struct.vrequest, %struct.vrequest* %20, i32 0, i32 0
  store %struct.usb_request* %21, %struct.usb_request** %3, align 8
  br label %22

22:                                               ; preds = %16, %15, %9
  %23 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  ret %struct.usb_request* %23
}

declare dso_local %struct.vrequest* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
