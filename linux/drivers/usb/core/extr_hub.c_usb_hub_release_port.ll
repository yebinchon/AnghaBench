; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_release_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_release_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_dev_state = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hub_release_port(%struct.usb_device* %0, i32 %1, %struct.usb_dev_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_dev_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_dev_state**, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.usb_dev_state* %2, %struct.usb_dev_state** %7, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @find_port_owner(%struct.usb_device* %10, i32 %11, %struct.usb_dev_state*** %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %28

17:                                               ; preds = %3
  %18 = load %struct.usb_dev_state**, %struct.usb_dev_state*** %9, align 8
  %19 = load %struct.usb_dev_state*, %struct.usb_dev_state** %18, align 8
  %20 = load %struct.usb_dev_state*, %struct.usb_dev_state** %7, align 8
  %21 = icmp ne %struct.usb_dev_state* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load %struct.usb_dev_state**, %struct.usb_dev_state*** %9, align 8
  store %struct.usb_dev_state* null, %struct.usb_dev_state** %26, align 8
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @find_port_owner(%struct.usb_device*, i32, %struct.usb_dev_state***) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
