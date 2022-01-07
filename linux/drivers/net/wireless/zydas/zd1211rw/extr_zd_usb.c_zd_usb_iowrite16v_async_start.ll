; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_iowrite16v_async_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { i32, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_usb_iowrite16v_async_start(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %3 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %4 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %3, i32 0, i32 3
  %5 = call i32 @usb_anchor_empty(i32* %4)
  %6 = call i32 @ZD_ASSERT(i32 %5)
  %7 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %8 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ZD_ASSERT(i32 %11)
  %13 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %14 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @ZD_ASSERT(i32 %18)
  %20 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %21 = call %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @mutex_is_locked(i32* %22)
  %24 = call i32 @ZD_ASSERT(i32 %23)
  %25 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %26 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %28 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %30 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @ZD_ASSERT(i32) #1

declare dso_local i32 @usb_anchor_empty(i32*) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.TYPE_2__* @zd_usb_to_chip(%struct.zd_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
