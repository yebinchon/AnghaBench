; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.urb = type { i32 }
%struct.c67x00_hcd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c67x00_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.c67x00_hcd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %5, align 8
  store %struct.urb* %1, %struct.urb** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %12 = call %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd* %11)
  store %struct.c67x00_hcd* %12, %struct.c67x00_hcd** %8, align 8
  %13 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %14 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %13, i32 0, i32 0
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %17, %struct.urb* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %26 = load %struct.urb*, %struct.urb** %6, align 8
  %27 = call i32 @c67x00_release_urb(%struct.c67x00_hcd* %25, %struct.urb* %26)
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %29 = load %struct.urb*, %struct.urb** %6, align 8
  %30 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %28, %struct.urb* %29)
  %31 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %32 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %35 = load %struct.urb*, %struct.urb** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %34, %struct.urb* %35, i32 %36)
  %38 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %39 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %42 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %4, align 4
  br label %51

45:                                               ; preds = %23
  %46 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %8, align 8
  %47 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %46, i32 0, i32 0
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %45, %24
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.c67x00_hcd* @hcd_to_c67x00_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @c67x00_release_urb(%struct.c67x00_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
