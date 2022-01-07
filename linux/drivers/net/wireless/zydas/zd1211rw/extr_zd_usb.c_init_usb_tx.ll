; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_init_usb_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_init_usb_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_tx }
%struct.zd_usb_tx = type { i32, i64, i64, i32, i32, i64, i32, i32 }

@zd_tx_watchdog_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zd_usb*)* @init_usb_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_usb_tx(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca %struct.zd_usb_tx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %4 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %5 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %4, i32 0, i32 0
  store %struct.zd_usb_tx* %5, %struct.zd_usb_tx** %3, align 8
  %6 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %7 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %6, i32 0, i32 7
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %10 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %9, i32 0, i32 6
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %13 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %15 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %14, i32 0, i32 4
  %16 = call i32 @skb_queue_head_init(i32* %15)
  %17 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %18 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %17, i32 0, i32 3
  %19 = call i32 @init_usb_anchor(i32* %18)
  %20 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %21 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %23 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.zd_usb_tx*, %struct.zd_usb_tx** %3, align 8
  %25 = getelementptr inbounds %struct.zd_usb_tx, %struct.zd_usb_tx* %24, i32 0, i32 0
  %26 = load i32, i32* @zd_tx_watchdog_handler, align 4
  %27 = call i32 @INIT_DELAYED_WORK(i32* %25, i32 %26)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_usb_anchor(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
