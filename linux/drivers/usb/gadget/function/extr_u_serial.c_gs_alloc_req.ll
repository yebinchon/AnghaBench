; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_alloc_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_alloc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32, i32* }
%struct.usb_ep = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_request* @gs_alloc_req(%struct.usb_ep* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.usb_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_request*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep* %9, i32 %10)
  store %struct.usb_request* %11, %struct.usb_request** %8, align 8
  %12 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %13 = icmp ne %struct.usb_request* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %17 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @kmalloc(i32 %18, i32 %19)
  %21 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %22 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %24 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %14
  %28 = load %struct.usb_ep*, %struct.usb_ep** %5, align 8
  %29 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  %30 = call i32 @usb_ep_free_request(%struct.usb_ep* %28, %struct.usb_request* %29)
  store %struct.usb_request* null, %struct.usb_request** %4, align 8
  br label %34

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31, %3
  %33 = load %struct.usb_request*, %struct.usb_request** %8, align 8
  store %struct.usb_request* %33, %struct.usb_request** %4, align 8
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  ret %struct.usb_request* %35
}

declare dso_local %struct.usb_request* @usb_ep_alloc_request(%struct.usb_ep*, i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_ep_free_request(%struct.usb_ep*, %struct.usb_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
