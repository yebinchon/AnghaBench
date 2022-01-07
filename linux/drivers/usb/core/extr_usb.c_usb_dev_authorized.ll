; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_dev_authorized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_usb.c_usb_dev_authorized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32, i32 }
%struct.usb_hcd = type { i32 }
%struct.usb_hub = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@USB_PORT_CONNECT_TYPE_HARD_WIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_hcd*)* @usb_dev_authorized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_dev_authorized(%struct.usb_device* %0, %struct.usb_hcd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_hcd*, align 8
  %6 = alloca %struct.usb_hub*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_hcd* %1, %struct.usb_hcd** %5, align 8
  %7 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %8 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.usb_hcd*, %struct.usb_hcd** %5, align 8
  %14 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %17 [
    i32 128, label %16
    i32 130, label %18
    i32 129, label %19
  ]

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %12, %16
  store i32 0, i32* %3, align 4
  br label %39

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %39

19:                                               ; preds = %12
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.usb_hub* @usb_hub_to_struct_hub(i32 %22)
  store %struct.usb_hub* %23, %struct.usb_hub** %6, align 8
  %24 = load %struct.usb_hub*, %struct.usb_hub** %6, align 8
  %25 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %28 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %31
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_PORT_CONNECT_TYPE_HARD_WIRED, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %19, %18, %17, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.usb_hub* @usb_hub_to_struct_hub(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
