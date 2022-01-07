; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_set_port_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_set_port_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub = type { i32 }

@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hub_set_port_power(%struct.usb_device* %0, %struct.usb_hub* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_hub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.usb_hub* %1, %struct.usb_hub** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %17 = call i32 @set_port_feature(%struct.usb_device* %14, i32 %15, i32 %16)
  store i32 %17, i32* %10, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %22 = call i32 @usb_clear_port_feature(%struct.usb_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %44

28:                                               ; preds = %23
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %34 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_bit(i32 %32, i32 %35)
  br label %43

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %40 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clear_bit(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @set_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @usb_clear_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
