; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_phy.c_usb_phy_roothub_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usb_phy_roothub = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_phy_roothub_resume(%struct.device* %0, %struct.usb_phy_roothub* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usb_phy_roothub*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.usb_phy_roothub* %1, %struct.usb_phy_roothub** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i32 @device_may_wakeup(%struct.device* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %5, align 8
  %12 = call i32 @usb_phy_roothub_init(%struct.usb_phy_roothub* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %2
  %19 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %5, align 8
  %20 = call i32 @usb_phy_roothub_power_on(%struct.usb_phy_roothub* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @device_may_wakeup(%struct.device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load %struct.usb_phy_roothub*, %struct.usb_phy_roothub** %5, align 8
  %29 = call i32 @usb_phy_roothub_exit(%struct.usb_phy_roothub* %28)
  br label %30

30:                                               ; preds = %27, %23, %18
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @device_may_wakeup(%struct.device*) #1

declare dso_local i32 @usb_phy_roothub_init(%struct.usb_phy_roothub*) #1

declare dso_local i32 @usb_phy_roothub_power_on(%struct.usb_phy_roothub*) #1

declare dso_local i32 @usb_phy_roothub_exit(%struct.usb_phy_roothub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
