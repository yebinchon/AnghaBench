; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c___zd_usb_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c___zd_usb_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_rx }
%struct.zd_usb_rx = type { i32, i32, %struct.urb** }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @__zd_usb_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__zd_usb_disable_rx(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.urb**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd_usb_rx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %8 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %9 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %8, i32 0, i32 0
  store %struct.zd_usb_rx* %9, %struct.zd_usb_rx** %7, align 8
  %10 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %11 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %15 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %14, i32 0, i32 2
  %16 = load %struct.urb**, %struct.urb*** %15, align 8
  store %struct.urb** %16, %struct.urb*** %5, align 8
  %17 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %18 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %21 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.urb**, %struct.urb*** %5, align 8
  %25 = icmp ne %struct.urb** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %63

27:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load %struct.urb**, %struct.urb*** %5, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.urb*, %struct.urb** %33, i64 %35
  %37 = load %struct.urb*, %struct.urb** %36, align 8
  %38 = call i32 @usb_kill_urb(%struct.urb* %37)
  %39 = load %struct.urb**, %struct.urb*** %5, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.urb*, %struct.urb** %39, i64 %41
  %43 = load %struct.urb*, %struct.urb** %42, align 8
  %44 = call i32 @free_rx_urb(%struct.urb* %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.urb**, %struct.urb*** %5, align 8
  %50 = call i32 @kfree(%struct.urb** %49)
  %51 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %52 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %51, i32 0, i32 1
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %56 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %55, i32 0, i32 2
  store %struct.urb** null, %struct.urb*** %56, align 8
  %57 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %58 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %7, align 8
  %60 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %59, i32 0, i32 1
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %48, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @free_rx_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
