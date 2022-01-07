; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_urb_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_max3421-hcd.c_max3421_urb_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.max3421_hcd = type { i32, i32, %struct.urb* }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @max3421_urb_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max3421_urb_done(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.max3421_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %8 = call %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd* %7)
  store %struct.max3421_hcd* %8, %struct.max3421_hcd** %3, align 8
  %9 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %18, i32 0, i32 2
  %20 = load %struct.urb*, %struct.urb** %19, align 8
  store %struct.urb* %20, %struct.urb** %5, align 8
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %25 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %24, i32 0, i32 2
  store %struct.urb* null, %struct.urb** %25, align 8
  %26 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %26, i32 0, i32 1
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %30, %struct.urb* %31)
  %33 = load %struct.max3421_hcd*, %struct.max3421_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.max3421_hcd, %struct.max3421_hcd* %33, i32 0, i32 1
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %38 = load %struct.urb*, %struct.urb** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %37, %struct.urb* %38, i32 %39)
  br label %41

41:                                               ; preds = %23, %17
  ret i32 1
}

declare dso_local %struct.max3421_hcd* @hcd_to_max3421(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
