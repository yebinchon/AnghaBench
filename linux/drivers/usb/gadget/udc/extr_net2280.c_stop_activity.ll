; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_stop_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.usb_gadget_driver = type { i32 (%struct.TYPE_2__*)* }

@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*, %struct.usb_gadget_driver*)* @stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_activity(%struct.net2280* %0, %struct.usb_gadget_driver* %1) #0 {
  %3 = alloca %struct.net2280*, align 8
  %4 = alloca %struct.usb_gadget_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.net2280* %0, %struct.net2280** %3, align 8
  store %struct.usb_gadget_driver* %1, %struct.usb_gadget_driver** %4, align 8
  %6 = load %struct.net2280*, %struct.net2280** %3, align 8
  %7 = getelementptr inbounds %struct.net2280, %struct.net2280* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.usb_gadget_driver* null, %struct.usb_gadget_driver** %4, align 8
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.net2280*, %struct.net2280** %3, align 8
  %15 = call i32 @usb_reset(%struct.net2280* %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %30, %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.net2280*, %struct.net2280** %3, align 8
  %19 = getelementptr inbounds %struct.net2280, %struct.net2280* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.net2280*, %struct.net2280** %3, align 8
  %24 = getelementptr inbounds %struct.net2280, %struct.net2280* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @nuke(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %16

33:                                               ; preds = %16
  %34 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %35 = icmp ne %struct.usb_gadget_driver* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.net2280*, %struct.net2280** %3, align 8
  %38 = getelementptr inbounds %struct.net2280, %struct.net2280* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load %struct.usb_gadget_driver*, %struct.usb_gadget_driver** %4, align 8
  %41 = getelementptr inbounds %struct.usb_gadget_driver, %struct.usb_gadget_driver* %40, i32 0, i32 0
  %42 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %41, align 8
  %43 = load %struct.net2280*, %struct.net2280** %3, align 8
  %44 = getelementptr inbounds %struct.net2280, %struct.net2280* %43, i32 0, i32 2
  %45 = call i32 %42(%struct.TYPE_2__* %44)
  %46 = load %struct.net2280*, %struct.net2280** %3, align 8
  %47 = getelementptr inbounds %struct.net2280, %struct.net2280* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  br label %49

49:                                               ; preds = %36, %33
  %50 = load %struct.net2280*, %struct.net2280** %3, align 8
  %51 = call i32 @usb_reinit(%struct.net2280* %50)
  ret void
}

declare dso_local i32 @usb_reset(%struct.net2280*) #1

declare dso_local i32 @nuke(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usb_reinit(%struct.net2280*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
