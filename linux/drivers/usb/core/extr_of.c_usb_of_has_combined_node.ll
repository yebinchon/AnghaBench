; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_of.c_usb_of_has_combined_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_of.c_usb_of_has_combined_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.usb_device_descriptor }
%struct.TYPE_4__ = type { %struct.usb_config_descriptor }
%struct.usb_config_descriptor = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_device_descriptor = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_of_has_combined_node(%struct.usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca %struct.usb_device_descriptor*, align 8
  %5 = alloca %struct.usb_config_descriptor*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 2
  store %struct.usb_device_descriptor* %7, %struct.usb_device_descriptor** %4, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %16 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %35 [
    i32 128, label %18
    i32 129, label %18
  ]

18:                                               ; preds = %14, %14
  %19 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %4, align 8
  %20 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.usb_config_descriptor* %27, %struct.usb_config_descriptor** %5, align 8
  %28 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %5, align 8
  %29 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %36

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %18
  br label %35

35:                                               ; preds = %34, %14
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
