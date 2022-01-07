; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_ohci_hub_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-pxa27x.c_pxa27x_ohci_hub_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.pxa27x_ohci = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@USB_PORT_FEAT_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i32, i32, i32, i8*, i32)* @pxa27x_ohci_hub_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_ohci_hub_control(%struct.usb_hcd* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pxa27x_ohci*, align 8
  %15 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %17 = call %struct.pxa27x_ohci* @to_pxa27x_ohci(%struct.usb_hcd* %16)
  store %struct.pxa27x_ohci* %17, %struct.pxa27x_ohci** %14, align 8
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %46 [
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %6, %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @EPIPE, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %54

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @USB_PORT_FEAT_POWER, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %46

33:                                               ; preds = %28
  %34 = load %struct.pxa27x_ohci*, %struct.pxa27x_ohci** %14, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 128
  %39 = zext i1 %38 to i32
  %40 = call i32 @pxa27x_ohci_set_vbus_power(%struct.pxa27x_ohci* %34, i32 %36, i32 %39)
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %54

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %6, %45, %32
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @ohci_hub_control(%struct.usb_hcd* %47, i32 %48, i32 %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %46, %43, %25
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local %struct.pxa27x_ohci* @to_pxa27x_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @pxa27x_ohci_set_vbus_power(%struct.pxa27x_ohci*, i32, i32) #1

declare dso_local i32 @ohci_hub_control(%struct.usb_hcd*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
