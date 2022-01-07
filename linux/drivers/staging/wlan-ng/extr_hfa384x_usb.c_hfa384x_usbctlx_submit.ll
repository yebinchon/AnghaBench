; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_hfa384x_usb.c_hfa384x_usbctlx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfa384x = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hfa384x_usbctlx = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@CTLX_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfa384x*, %struct.hfa384x_usbctlx*)* @hfa384x_usbctlx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa384x_usbctlx_submit(%struct.hfa384x* %0, %struct.hfa384x_usbctlx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfa384x*, align 8
  %5 = alloca %struct.hfa384x_usbctlx*, align 8
  %6 = alloca i64, align 8
  store %struct.hfa384x* %0, %struct.hfa384x** %4, align 8
  store %struct.hfa384x_usbctlx* %1, %struct.hfa384x_usbctlx** %5, align 8
  %7 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %8 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %13 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %20 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load i32, i32* @CTLX_PENDING, align 4
  %28 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %29 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hfa384x_usbctlx*, %struct.hfa384x_usbctlx** %5, align 8
  %31 = getelementptr inbounds %struct.hfa384x_usbctlx, %struct.hfa384x_usbctlx* %30, i32 0, i32 0
  %32 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %31, i32* %34)
  %36 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %37 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.hfa384x*, %struct.hfa384x** %4, align 8
  %42 = call i32 @hfa384x_usbctlxq_run(%struct.hfa384x* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hfa384x_usbctlxq_run(%struct.hfa384x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
