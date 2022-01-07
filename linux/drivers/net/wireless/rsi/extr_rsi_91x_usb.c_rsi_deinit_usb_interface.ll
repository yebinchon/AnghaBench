; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_deinit_usb_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_deinit_usb_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.rsi_91x_usbdev = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsi_hw*)* @rsi_deinit_usb_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_deinit_usb_interface(%struct.rsi_hw* %0) #0 {
  %2 = alloca %struct.rsi_hw*, align 8
  %3 = alloca %struct.rsi_91x_usbdev*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %2, align 8
  %4 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %5 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.rsi_91x_usbdev*
  store %struct.rsi_91x_usbdev* %7, %struct.rsi_91x_usbdev** %3, align 8
  %8 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %3, align 8
  %9 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %8, i32 0, i32 2
  %10 = call i32 @rsi_kill_thread(i32* %9)
  %11 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %3, align 8
  %12 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_free_urb(i32 %16)
  %18 = load %struct.rsi_hw*, %struct.rsi_hw** %2, align 8
  %19 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %3, align 8
  %26 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_free_urb(i32 %30)
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %3, align 8
  %34 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kfree(i32 %35)
  ret void
}

declare dso_local i32 @rsi_kill_thread(i32*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
