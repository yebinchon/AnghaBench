; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_check_args.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci.c_xhci_check_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_device = type { i64, i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.xhci_hcd = type { i32, %struct.xhci_virt_device** }
%struct.xhci_virt_device = type { %struct.usb_device* }

@.str = private unnamed_addr constant [34 x i8] c"xHCI %s called with invalid args\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xHCI %s called for root hub\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"xHCI %s called with unaddressed device\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"xHCI %s called with udev and virt_dev does not match\0A\00", align 1
@XHCI_STATE_HALTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i8*)* @xhci_check_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_check_args(%struct.usb_hcd* %0, %struct.usb_device* %1, %struct.usb_host_endpoint* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_hcd*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.usb_host_endpoint*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.xhci_hcd*, align 8
  %15 = alloca %struct.xhci_virt_device*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %8, align 8
  store %struct.usb_device* %1, %struct.usb_device** %9, align 8
  store %struct.usb_host_endpoint* %2, %struct.usb_host_endpoint** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %17 = icmp ne %struct.usb_hcd* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %10, align 8
  %23 = icmp ne %struct.usb_host_endpoint* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %18
  %25 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %26 = icmp ne %struct.usb_device* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %21, %6
  %28 = load i8*, i8** %13, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %98

32:                                               ; preds = %24
  %33 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 0, i32* %7, align 4
  br label %98

40:                                               ; preds = %32
  %41 = load %struct.usb_hcd*, %struct.usb_hcd** %8, align 8
  %42 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %41)
  store %struct.xhci_hcd* %42, %struct.xhci_hcd** %14, align 8
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %87

45:                                               ; preds = %40
  %46 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %47 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %52 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %51, i32 0, i32 1
  %53 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %52, align 8
  %54 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %53, i64 %56
  %58 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %57, align 8
  %59 = icmp ne %struct.xhci_virt_device* %58, null
  br i1 %59, label %66, label %60

60:                                               ; preds = %50, %45
  %61 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @xhci_dbg(%struct.xhci_hcd* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %98

66:                                               ; preds = %50
  %67 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %68 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %67, i32 0, i32 1
  %69 = load %struct.xhci_virt_device**, %struct.xhci_virt_device*** %68, align 8
  %70 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %71 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.xhci_virt_device*, %struct.xhci_virt_device** %69, i64 %72
  %74 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %73, align 8
  store %struct.xhci_virt_device* %74, %struct.xhci_virt_device** %15, align 8
  %75 = load %struct.xhci_virt_device*, %struct.xhci_virt_device** %15, align 8
  %76 = getelementptr inbounds %struct.xhci_virt_device, %struct.xhci_virt_device* %75, i32 0, i32 0
  %77 = load %struct.usb_device*, %struct.usb_device** %76, align 8
  %78 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %79 = icmp ne %struct.usb_device* %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 @xhci_dbg(%struct.xhci_hcd* %81, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %7, align 4
  br label %98

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %40
  %88 = load %struct.xhci_hcd*, %struct.xhci_hcd** %14, align 8
  %89 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XHCI_STATE_HALTED, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %98

97:                                               ; preds = %87
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %94, %80, %60, %37, %27
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
