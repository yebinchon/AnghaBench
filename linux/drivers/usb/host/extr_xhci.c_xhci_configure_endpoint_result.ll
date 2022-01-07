; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_configure_endpoint_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_configure_endpoint_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Timeout while waiting for configure endpoint command\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Not enough host controller resources for new device state.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Not enough bandwidth for new device state.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"ERROR: Endpoint drop flag = 0, add flag = 1, and endpoint is not disabled.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"ERROR: Incompatible device for endpoint configure command.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@trace_xhci_dbg_context_change = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Successful Endpoint Configure command\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ERROR: unexpected command completion code 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.usb_device*, i32*)* @xhci_configure_endpoint_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_configure_endpoint_result(%struct.xhci_hcd* %0, %struct.usb_device* %1, i32* %2) #0 {
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %4, align 8
  store %struct.usb_device* %1, %struct.usb_device** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %43 [
    i32 134, label %10
    i32 133, label %10
    i32 131, label %15
    i32 135, label %21
    i32 130, label %21
    i32 128, label %27
    i32 132, label %33
    i32 129, label %39
  ]

10:                                               ; preds = %3, %3
  %11 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %12 = call i32 @xhci_warn(%struct.xhci_hcd* %11, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ETIME, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %16, i32 0, i32 0
  %18 = call i32 @dev_warn(i32* %17, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %50

21:                                               ; preds = %3, %3
  %22 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %35 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %34, i32 0, i32 0
  %36 = call i32 @dev_warn(i32* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %41 = load i32, i32* @trace_xhci_dbg_context_change, align 4
  %42 = call i32 @xhci_dbg_trace(%struct.xhci_hcd* %40, i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %50

43:                                               ; preds = %3
  %44 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xhci_err(%struct.xhci_hcd* %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %43, %39, %33, %27, %21, %15, %10
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @xhci_dbg_trace(%struct.xhci_hcd*, i32, i8*) #1

declare dso_local i32 @xhci_err(%struct.xhci_hcd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
