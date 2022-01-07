; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_find_child.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hub.c_usb_hub_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_hub = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.usb_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usb_device* @usb_hub_find_child(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_hub*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = call %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device* %7)
  store %struct.usb_hub* %8, %struct.usb_hub** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %14 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  store %struct.usb_device* null, %struct.usb_device** %3, align 8
  br label %29

18:                                               ; preds = %11
  %19 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %20 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.usb_device*, %struct.usb_device** %27, align 8
  store %struct.usb_device* %28, %struct.usb_device** %3, align 8
  br label %29

29:                                               ; preds = %18, %17
  %30 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  ret %struct.usb_device* %30
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
