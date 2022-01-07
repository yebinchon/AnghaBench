; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c__zd_iowrite32v_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_chip.c__zd_iowrite32v_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_chip = type { i32 }
%struct.zd_ioreq32 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_zd_iowrite32v_locked(%struct.zd_chip* %0, %struct.zd_ioreq32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  %6 = alloca %struct.zd_ioreq32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.zd_chip* %0, %struct.zd_chip** %5, align 8
  store %struct.zd_ioreq32* %1, %struct.zd_ioreq32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %10 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %9, i32 0, i32 0
  %11 = call i32 @zd_usb_iowrite16v_async_start(i32* %10)
  %12 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %13 = load %struct.zd_ioreq32*, %struct.zd_ioreq32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @_zd_iowrite32v_async_locked(%struct.zd_chip* %12, %struct.zd_ioreq32* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %20 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %19, i32 0, i32 0
  %21 = call i32 @zd_usb_iowrite16v_async_end(i32* %20, i32 0)
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %25 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %24, i32 0, i32 0
  %26 = call i32 @zd_usb_iowrite16v_async_end(i32* %25, i32 50)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @zd_usb_iowrite16v_async_start(i32*) #1

declare dso_local i32 @_zd_iowrite32v_async_locked(%struct.zd_chip*, %struct.zd_ioreq32*, i32) #1

declare dso_local i32 @zd_usb_iowrite16v_async_end(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
