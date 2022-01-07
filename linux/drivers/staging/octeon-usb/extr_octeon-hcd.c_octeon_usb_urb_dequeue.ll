; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon-usb/extr_octeon-hcd.c_octeon_usb_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_hcd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @octeon_usb_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_usb_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_hcd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %12 = call %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd* %11)
  store %struct.octeon_hcd* %12, %struct.octeon_hcd** %8, align 8
  %13 = load %struct.urb*, %struct.urb** %6, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %22 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %21, i32 0, i32 0
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %25, %struct.urb* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %46

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %37 = load %struct.urb*, %struct.urb** %6, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @cvmx_usb_cancel(%struct.octeon_hcd* %36, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %32, %31
  %47 = load %struct.octeon_hcd*, %struct.octeon_hcd** %8, align 8
  %48 = getelementptr inbounds %struct.octeon_hcd, %struct.octeon_hcd* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.octeon_hcd* @hcd_to_octeon(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @cvmx_usb_cancel(%struct.octeon_hcd*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
