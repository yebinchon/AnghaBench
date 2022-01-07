; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_get_urb_to_r8a66597_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_get_urb_to_r8a66597_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.urb = type { i32 }
%struct.r8a66597_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*, %struct.urb*)* @get_urb_to_r8a66597_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_urb_to_r8a66597_addr(%struct.r8a66597* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.r8a66597_device*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.urb* %1, %struct.urb** %4, align 8
  %6 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %4, align 8
  %8 = call %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597* %6, %struct.urb* %7)
  store %struct.r8a66597_device* %8, %struct.r8a66597_device** %5, align 8
  %9 = load %struct.urb*, %struct.urb** %4, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @usb_pipedevice(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.r8a66597_device*, %struct.r8a66597_device** %5, align 8
  %17 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 0, %14 ], [ %18, %15 ]
  ret i32 %20
}

declare dso_local %struct.r8a66597_device* @get_urb_to_r8a66597_dev(%struct.r8a66597*, %struct.urb*) #1

declare dso_local i64 @usb_pipedevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
