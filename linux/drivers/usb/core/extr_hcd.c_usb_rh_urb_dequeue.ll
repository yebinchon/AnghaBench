; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_rh_urb_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_rh_urb_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.urb*, i32, i32 }
%struct.urb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@hcd_root_hub_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.urb*, i32)* @usb_rh_urb_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_rh_urb_dequeue(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %7, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @hcd_root_hub_lock, i64 %9)
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd* %11, %struct.urb* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %53

18:                                               ; preds = %3
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @usb_endpoint_num(i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %52

26:                                               ; preds = %18
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %28 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 1
  %34 = call i32 @del_timer(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %38 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %37, i32 0, i32 0
  %39 = load %struct.urb*, %struct.urb** %38, align 8
  %40 = icmp eq %struct.urb* %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %42, i32 0, i32 0
  store %struct.urb* null, %struct.urb** %43, align 8
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %45 = load %struct.urb*, %struct.urb** %5, align 8
  %46 = call i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd* %44, %struct.urb* %45)
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = load %struct.urb*, %struct.urb** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @usb_hcd_giveback_urb(%struct.usb_hcd* %47, %struct.urb* %48, i32 %49)
  br label %51

51:                                               ; preds = %41, %35
  br label %52

52:                                               ; preds = %51, %25
  br label %53

53:                                               ; preds = %52, %17
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* @hcd_root_hub_lock, i64 %54)
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usb_hcd_check_unlink_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i64 @usb_endpoint_num(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(%struct.usb_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_giveback_urb(%struct.usb_hcd*, %struct.urb*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
