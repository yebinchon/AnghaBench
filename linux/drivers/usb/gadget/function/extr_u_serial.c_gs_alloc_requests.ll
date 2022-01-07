; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_serial.c_gs_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.list_head = type { i32 }
%struct.usb_request = type { void (%struct.usb_ep.0*, %struct.usb_request*)*, i32 }
%struct.usb_ep.0 = type opaque

@QUEUE_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.list_head*, void (%struct.usb_ep*, %struct.usb_request*)*, i32*)* @gs_alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_alloc_requests(%struct.usb_ep* %0, %struct.list_head* %1, void (%struct.usb_ep*, %struct.usb_request*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_ep*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca void (%struct.usb_ep*, %struct.usb_request*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.usb_request*, align 8
  %12 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %6, align 8
  store %struct.list_head* %1, %struct.list_head** %7, align 8
  store void (%struct.usb_ep*, %struct.usb_request*)* %2, void (%struct.usb_ep*, %struct.usb_request*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load i32, i32* @QUEUE_SIZE, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %16, %18
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @QUEUE_SIZE, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi i32 [ %19, %15 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %63, %22
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  %29 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %30 = load %struct.usb_ep*, %struct.usb_ep** %6, align 8
  %31 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.usb_request* @gs_alloc_req(%struct.usb_ep* %29, i32 %32, i32 %33)
  store %struct.usb_request* %34, %struct.usb_request** %11, align 8
  %35 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %36 = icmp ne %struct.usb_request* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %28
  %38 = load %struct.list_head*, %struct.list_head** %7, align 8
  %39 = call i64 @list_empty(%struct.list_head* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  br label %45

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 0, %44 ]
  store i32 %46, i32* %5, align 4
  br label %67

47:                                               ; preds = %28
  %48 = load void (%struct.usb_ep*, %struct.usb_request*)*, void (%struct.usb_ep*, %struct.usb_request*)** %8, align 8
  %49 = bitcast void (%struct.usb_ep*, %struct.usb_request*)* %48 to void (%struct.usb_ep.0*, %struct.usb_request*)*
  %50 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %51 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %50, i32 0, i32 0
  store void (%struct.usb_ep.0*, %struct.usb_request*)* %49, void (%struct.usb_ep.0*, %struct.usb_request*)** %51, align 8
  %52 = load %struct.usb_request*, %struct.usb_request** %11, align 8
  %53 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %52, i32 0, i32 1
  %54 = load %struct.list_head*, %struct.list_head** %7, align 8
  %55 = call i32 @list_add_tail(i32* %53, %struct.list_head* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %58, %47
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %24

66:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.usb_request* @gs_alloc_req(%struct.usb_ep*, i32, i32) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
