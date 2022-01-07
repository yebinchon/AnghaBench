; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_enable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_rx }
%struct.zd_usb_rx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_usb_enable_rx(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_usb_rx*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %5 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %6 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %5, i32 0, i32 0
  store %struct.zd_usb_rx* %6, %struct.zd_usb_rx** %4, align 8
  %7 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %8 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %11 = call i32 @__zd_usb_enable_rx(%struct.zd_usb* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.zd_usb_rx*, %struct.zd_usb_rx** %4, align 8
  %13 = getelementptr inbounds %struct.zd_usb_rx, %struct.zd_usb_rx* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %16 = call i32 @zd_usb_reset_rx_idle_timer(%struct.zd_usb* %15)
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__zd_usb_enable_rx(%struct.zd_usb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @zd_usb_reset_rx_idle_timer(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
