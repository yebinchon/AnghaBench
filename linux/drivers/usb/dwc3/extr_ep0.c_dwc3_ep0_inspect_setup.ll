; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_inspect_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_inspect_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, i32, i32, i64 }
%struct.dwc3_event_depevt = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DWC3_EP0_NRDY_STATUS = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@DWC3_EP0_NRDY_DATA = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_ep0_inspect_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_inspect_setup(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  %8 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %12, %struct.usb_ctrlrequest** %5, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %16 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %78

20:                                               ; preds = %2
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %22 = call i32 @trace_dwc3_ctrl_req(%struct.usb_ctrlrequest* %21)
  %23 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %24 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %20
  %30 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* @DWC3_EP0_NRDY_STATUS, align 4
  %35 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %36 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %54

37:                                               ; preds = %20
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @USB_DIR_IN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %50 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DWC3_EP0_NRDY_DATA, align 4
  %52 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %53 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %37, %29
  %55 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USB_TYPE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %65 = call i32 @dwc3_ep0_std_request(%struct.dwc3* %63, %struct.usb_ctrlrequest* %64)
  store i32 %65, i32* %6, align 4
  br label %70

66:                                               ; preds = %54
  %67 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %68 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %69 = call i32 @dwc3_ep0_delegate_req(%struct.dwc3* %67, %struct.usb_ctrlrequest* %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %76 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77, %19
  %79 = load i32, i32* %6, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %83 = call i32 @dwc3_ep0_stall_and_restart(%struct.dwc3* %82)
  br label %84

84:                                               ; preds = %81, %78
  ret void
}

declare dso_local i32 @trace_dwc3_ctrl_req(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dwc3_ep0_std_request(%struct.dwc3*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @dwc3_ep0_delegate_req(%struct.dwc3*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @dwc3_ep0_stall_and_restart(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
