; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_disable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_usb.c_zd_usb_disable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_usb = type { %struct.zd_usb_interrupt }
%struct.zd_usb_interrupt = type { i32, i32*, i32, %struct.urb* }
%struct.urb = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"urb %p killed\0A\00", align 1
@USB_MAX_EP_INT_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zd_usb_disable_int(%struct.zd_usb* %0) #0 {
  %2 = alloca %struct.zd_usb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.zd_usb_interrupt*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.zd_usb* %0, %struct.zd_usb** %2, align 8
  %9 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %10 = call %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb* %9)
  store %struct.usb_device* %10, %struct.usb_device** %4, align 8
  %11 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %12 = getelementptr inbounds %struct.zd_usb, %struct.zd_usb* %11, i32 0, i32 0
  store %struct.zd_usb_interrupt* %12, %struct.zd_usb_interrupt** %5, align 8
  %13 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %14 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %13, i32 0, i32 0
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %18 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %17, i32 0, i32 3
  %19 = load %struct.urb*, %struct.urb** %18, align 8
  store %struct.urb* %19, %struct.urb** %6, align 8
  %20 = load %struct.urb*, %struct.urb** %6, align 8
  %21 = icmp ne %struct.urb* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %24 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %23, i32 0, i32 0
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  br label %59

27:                                               ; preds = %1
  %28 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %29 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %28, i32 0, i32 3
  store %struct.urb* null, %struct.urb** %29, align 8
  %30 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %31 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %7, align 8
  %34 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %35 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %8, align 4
  %37 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %38 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  %39 = load %struct.zd_usb_interrupt*, %struct.zd_usb_interrupt** %5, align 8
  %40 = getelementptr inbounds %struct.zd_usb_interrupt, %struct.zd_usb_interrupt* %39, i32 0, i32 0
  %41 = load i64, i64* %3, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.urb*, %struct.urb** %6, align 8
  %44 = call i32 @usb_kill_urb(%struct.urb* %43)
  %45 = load %struct.zd_usb*, %struct.zd_usb** %2, align 8
  %46 = call i32 @zd_usb_dev(%struct.zd_usb* %45)
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = call i32 @dev_dbg_f(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.urb* %47)
  %49 = load %struct.urb*, %struct.urb** %6, align 8
  %50 = call i32 @usb_free_urb(%struct.urb* %49)
  %51 = load i8*, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %27
  %54 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %55 = load i32, i32* @USB_MAX_EP_INT_BUFFER, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @usb_free_coherent(%struct.usb_device* %54, i32 %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %22, %53, %27
  ret void
}

declare dso_local %struct.usb_device* @zd_usb_to_usbdev(%struct.zd_usb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, %struct.urb*) #1

declare dso_local i32 @zd_usb_dev(%struct.zd_usb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
