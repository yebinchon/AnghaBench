; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_usb_int_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_usb_int_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, %struct.urb* }
%struct.urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_usb*)* @usb_int_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_int_enabled(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.zd_usb_interrupt*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %6 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %7 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %6, i32 0, i32 0
  store %struct.zd_usb_interrupt* %7, %struct.zd_usb_interrupt** %4, align 8
  %8 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %9 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %8, i32 0, i32 0
  %10 = load i64, i64* %3, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %13 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %12, i32 0, i32 1
  %14 = load %struct.urb*, %struct.urb** %13, align 8
  store %struct.urb* %14, %struct.urb** %5, align 8
  %15 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %4, align 8
  %16 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = icmp ne %struct.urb* %19, null
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
