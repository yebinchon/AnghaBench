; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_poison_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_urb.c_usb_poison_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@usb_kill_urb_queue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_poison_urb(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = icmp ne %struct.urb* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  %8 = load %struct.urb*, %struct.urb** %2, align 8
  %9 = getelementptr inbounds %struct.urb, %struct.urb* %8, i32 0, i32 3
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load %struct.urb*, %struct.urb** %2, align 8
  %12 = getelementptr inbounds %struct.urb, %struct.urb* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %7
  br label %33

21:                                               ; preds = %15
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @usb_hcd_unlink_urb(%struct.urb* %22, i32 %24)
  %26 = load i32, i32* @usb_kill_urb_queue, align 4
  %27 = load %struct.urb*, %struct.urb** %2, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_event(i32 %26, i32 %31)
  br label %33

33:                                               ; preds = %21, %20, %6
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb(%struct.urb*, i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
