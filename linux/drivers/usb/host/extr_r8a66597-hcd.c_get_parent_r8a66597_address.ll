; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_get_parent_r8a66597_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_r8a66597-hcd.c_get_parent_r8a66597_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.usb_device = type { i32, i32, %struct.usb_device* }
%struct.r8a66597_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8a66597*, %struct.usb_device*)* @get_parent_r8a66597_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_parent_r8a66597_address(%struct.r8a66597* %0, %struct.usb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.r8a66597*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.r8a66597_device*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 2
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %10 = icmp ne %struct.usb_device* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %12, i32 0, i32 2
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %15 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %20 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 2
  %21 = load %struct.usb_device*, %struct.usb_device** %20, align 8
  store %struct.usb_device* %21, %struct.usb_device** %5, align 8
  br label %22

22:                                               ; preds = %18, %11, %2
  %23 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 1
  %25 = call %struct.r8a66597_device* @dev_get_drvdata(i32* %24)
  store %struct.r8a66597_device* %25, %struct.r8a66597_device** %6, align 8
  %26 = load %struct.r8a66597_device*, %struct.r8a66597_device** %6, align 8
  %27 = icmp ne %struct.r8a66597_device* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.r8a66597_device*, %struct.r8a66597_device** %6, align 8
  %30 = getelementptr inbounds %struct.r8a66597_device, %struct.r8a66597_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.r8a66597_device* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
