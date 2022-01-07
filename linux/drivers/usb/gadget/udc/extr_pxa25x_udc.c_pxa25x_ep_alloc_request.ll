; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pxa25x_ep_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pxa25x_udc.c_pxa25x_ep_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.usb_ep = type { i32 }
%struct.pxa25x_request = type { %struct.usb_request, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_request* (%struct.usb_ep*, i32)* @pxa25x_ep_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_request* @pxa25x_ep_alloc_request(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_request*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pxa25x_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.pxa25x_request* @kzalloc(i32 8, i32 %7)
  store %struct.pxa25x_request* %8, %struct.pxa25x_request** %6, align 8
  %9 = load %struct.pxa25x_request*, %struct.pxa25x_request** %6, align 8
  %10 = icmp ne %struct.pxa25x_request* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.pxa25x_request*, %struct.pxa25x_request** %6, align 8
  %14 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.pxa25x_request*, %struct.pxa25x_request** %6, align 8
  %17 = getelementptr inbounds %struct.pxa25x_request, %struct.pxa25x_request* %16, i32 0, i32 0
  store %struct.usb_request* %17, %struct.usb_request** %3, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  ret %struct.usb_request* %19
}

declare dso_local %struct.pxa25x_request* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
