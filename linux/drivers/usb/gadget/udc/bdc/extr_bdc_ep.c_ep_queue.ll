; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/bdc/extr_bdc_ep.c_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdc_ep = type { i32, i32, %struct.bdc*, %struct.TYPE_3__ }
%struct.bdc = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.bdc_req = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"dma mapping failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdc_ep*, %struct.bdc_req*)* @ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_queue(%struct.bdc_ep* %0, %struct.bdc_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdc_ep*, align 8
  %5 = alloca %struct.bdc_req*, align 8
  %6 = alloca %struct.bdc*, align 8
  %7 = alloca i32, align 4
  store %struct.bdc_ep* %0, %struct.bdc_ep** %4, align 8
  store %struct.bdc_req* %1, %struct.bdc_req** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %9 = icmp ne %struct.bdc_req* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %12 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %10
  %20 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %21 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %20, i32 0, i32 2
  %22 = load %struct.bdc*, %struct.bdc** %21, align 8
  store %struct.bdc* %22, %struct.bdc** %6, align 8
  %23 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %24 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @EINPROGRESS, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %29 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %32 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %35 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.bdc*, %struct.bdc** %6, align 8
  %37 = getelementptr inbounds %struct.bdc, %struct.bdc* %36, i32 0, i32 1
  %38 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %39 = getelementptr inbounds %struct.bdc_req, %struct.bdc_req* %38, i32 0, i32 0
  %40 = load %struct.bdc_ep*, %struct.bdc_ep** %4, align 8
  %41 = getelementptr inbounds %struct.bdc_ep, %struct.bdc_ep* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @usb_gadget_map_request(i32* %37, %struct.TYPE_4__* %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %19
  %47 = load %struct.bdc*, %struct.bdc** %6, align 8
  %48 = getelementptr inbounds %struct.bdc, %struct.bdc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %19
  %53 = load %struct.bdc*, %struct.bdc** %6, align 8
  %54 = load %struct.bdc_req*, %struct.bdc_req** %5, align 8
  %55 = call i32 @bdc_queue_xfr(%struct.bdc* %53, %struct.bdc_req* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %46, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @bdc_queue_xfr(%struct.bdc*, %struct.bdc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
