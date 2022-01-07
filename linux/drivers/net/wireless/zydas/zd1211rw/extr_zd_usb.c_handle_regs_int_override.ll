; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_regs_int_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_handle_regs_int_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.zd_usb* }
%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @handle_regs_int_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_regs_int_override(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.zd_usb*, align 8
  %4 = alloca %struct.zd_usb_interrupt*, align 8
  %5 = alloca i64, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 0
  %8 = load %struct.zd_usb*, %struct.zd_usb** %7, align 8
  store %struct.zd_usb* %8, %struct.zd_usb** %3, align 8
  %9 = load %struct.zd_usb*, %struct.zd_usb** %3, align 8
  %10 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %9, i32 0, i32 0
  store %struct.zd_usb_interrupt* %10, %struct.zd_usb_interrupt** %4, align 8
  %11 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %12 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %16 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %15, i32 0, i32 3
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %21 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %20, i32 0, i32 3
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  %23 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %24 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %26 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @complete(i32* %27)
  br label %29

29:                                               ; preds = %19, %1
  %30 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %31 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %30, i32 0, i32 1
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
