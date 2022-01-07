; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_endpoint_descriptor = type { i64, i32 }
%struct.dwc3_ep = type { i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i32, i32 }

@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"dwc3: invalid parameters\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"dwc3: missing wMaxPacketSize\0A\00", align 1
@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"%s is already enabled\0A\00", align 1
@DWC3_DEPCFG_ACTION_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @dwc3_gadget_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca %struct.dwc3*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = icmp ne %struct.usb_ep* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %14 = icmp ne %struct.usb_endpoint_descriptor* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %17 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15, %12, %2
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %15
  %26 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %25
  %35 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %36 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %35)
  store %struct.dwc3_ep* %36, %struct.dwc3_ep** %6, align 8
  %37 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %37, i32 0, i32 2
  %39 = load %struct.dwc3*, %struct.dwc3** %38, align 8
  store %struct.dwc3* %39, %struct.dwc3** %7, align 8
  %40 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %44 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %49 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dev_WARN_ONCE(i32 %42, i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %67

54:                                               ; preds = %34
  %55 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %56 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %60 = load i32, i32* @DWC3_DEPCFG_ACTION_INIT, align 4
  %61 = call i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 0
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %54, %53, %30, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local i64 @dev_WARN_ONCE(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
