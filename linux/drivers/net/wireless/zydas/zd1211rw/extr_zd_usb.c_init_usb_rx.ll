; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_init_usb_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_init_usb_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32, %struct.zd_usb_rx }
%struct.zd_usb_rx = type { i32, i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@zd_rx_idle_timer_handler = common dso_local global i32 0, align 4
@zd_usb_reset_rx_idle_timer_tasklet = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @init_usb_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_usb_rx(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca %struct.zd_usb_rx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %4 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %5 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %4, i32 0, i32 1
  store %struct.zd_usb_rx* %5, %struct.zd_usb_rx** %3, align 8
  %6 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %7 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %6, i32 0, i32 5
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %10 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %9, i32 0, i32 4
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %13 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_4__* @interface_to_usbdev(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @USB_SPEED_HIGH, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %22 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %21, i32 0, i32 0
  store i32 512, i32* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %25 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %24, i32 0, i32 0
  store i32 64, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %28 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ZD_ASSERT(i32 %31)
  %33 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %34 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %33, i32 0, i32 3
  %35 = load i32, i32* @zd_rx_idle_timer_handler, align 4
  %36 = call i32 @INIT_DELAYED_WORK(i32* %34, i32 %35)
  %37 = load i32, i32* @zd_usb_reset_rx_idle_timer_tasklet, align 4
  %38 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %39 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %42 = ptrtoint %struct.zd_usb* %41 to i64
  %43 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %3, align 8
  %44 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_4__* @interface_to_usbdev(i32) #1

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
