; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_get_pipenum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_r8a66597_get_pipenum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.usb_host_endpoint = type { %struct.r8a66597_pipe* }
%struct.r8a66597_pipe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.usb_host_endpoint*)* @r8a66597_get_pipenum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8a66597_get_pipenum(%struct.urb* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca %struct.r8a66597_pipe*, align 8
  store %struct.urb* %0, %struct.urb** %4, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %5, align 8
  %7 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %8 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %7, i32 0, i32 0
  %9 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %8, align 8
  store %struct.r8a66597_pipe* %9, %struct.r8a66597_pipe** %6, align 8
  %10 = load %struct.urb*, %struct.urb** %4, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @usb_pipeendpoint(i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.r8a66597_pipe*, %struct.r8a66597_pipe** %6, align 8
  %18 = getelementptr inbounds %struct.r8a66597_pipe, %struct.r8a66597_pipe* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @usb_pipeendpoint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
