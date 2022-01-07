; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_rx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_phonet.c_pn_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_phonet = type { i32 }
%struct.usb_request = type { %struct.page*, i32, i32 }
%struct.page = type { i32 }

@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_phonet*, %struct.usb_request*, i32)* @pn_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn_rx_submit(%struct.f_phonet* %0, %struct.usb_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f_phonet*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.f_phonet* %0, %struct.f_phonet** %5, align 8
  store %struct.usb_request* %1, %struct.usb_request** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.page* @__dev_alloc_page(i32 %12)
  store %struct.page* %13, %struct.page** %8, align 8
  %14 = load %struct.page*, %struct.page** %8, align 8
  %15 = icmp ne %struct.page* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load %struct.page*, %struct.page** %8, align 8
  %21 = call i32 @page_address(%struct.page* %20)
  %22 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %23 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 0
  store %struct.page* %27, %struct.page** %29, align 8
  %30 = load %struct.f_phonet*, %struct.f_phonet** %5, align 8
  %31 = getelementptr inbounds %struct.f_phonet, %struct.f_phonet* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @usb_ep_queue(i32 %32, %struct.usb_request* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %19
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = call i32 @put_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %39, %19
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.page* @__dev_alloc_page(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @usb_ep_queue(i32, %struct.usb_request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
