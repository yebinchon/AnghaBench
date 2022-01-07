; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_urb_ep_type_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_urb_ep_type_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.usb_host_endpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pipetypes = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_urb_ep_type_check(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  %5 = load %struct.urb*, %struct.urb** %3, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.urb*, %struct.urb** %3, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.usb_host_endpoint* @usb_pipe_endpoint(i32 %7, i32 %10)
  store %struct.usb_host_endpoint* %11, %struct.usb_host_endpoint** %4, align 8
  %12 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %13 = icmp ne %struct.usb_host_endpoint* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.urb*, %struct.urb** %3, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @usb_pipetype(i32 %20)
  %22 = load i64*, i64** @pipetypes, align 8
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %24 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i32 0, i32 0
  %25 = call i64 @usb_endpoint_type(i32* %24)
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %21, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %29, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.usb_host_endpoint* @usb_pipe_endpoint(i32, i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i64 @usb_endpoint_type(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
