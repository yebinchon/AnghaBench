; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*, i32)* @dwc3_ep0_handle_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_handle_device(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %44 [
    i32 131, label %24
    i32 129, label %25
    i32 128, label %30
    i32 132, label %35
    i32 130, label %38
  ]

24:                                               ; preds = %3
  br label %47

25:                                               ; preds = %3
  %26 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dwc3_ep0_handle_u1(%struct.dwc3* %26, i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dwc3_ep0_handle_u2(%struct.dwc3* %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %47

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %47

38:                                               ; preds = %3
  %39 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dwc3_ep0_handle_test(%struct.dwc3* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %38, %35, %30, %25, %24
  %48 = load i32, i32* %10, align 4
  ret i32 %48
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dwc3_ep0_handle_u1(%struct.dwc3*, i32, i32) #1

declare dso_local i32 @dwc3_ep0_handle_u2(%struct.dwc3*, i32, i32) #1

declare dso_local i32 @dwc3_ep0_handle_test(%struct.dwc3*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
