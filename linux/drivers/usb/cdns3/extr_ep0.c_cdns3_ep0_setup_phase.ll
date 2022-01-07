; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_setup_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_setup_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, i64, %struct.cdns3_endpoint**, %struct.usb_ctrlrequest* }
%struct.cdns3_endpoint = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.usb_request = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@CDNS3_DATA_STAGE = common dso_local global i64 0, align 8
@CDNS3_STATUS_STAGE = common dso_local global i64 0, align 8
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_GADGET_DELAYED_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_device*)* @cdns3_ep0_setup_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_ep0_setup_phase(%struct.cdns3_device* %0) #0 {
  %2 = alloca %struct.cdns3_device*, align 8
  %3 = alloca %struct.usb_ctrlrequest*, align 8
  %4 = alloca %struct.cdns3_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_request*, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %2, align 8
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %8 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %7, i32 0, i32 3
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %8, align 8
  store %struct.usb_ctrlrequest* %9, %struct.usb_ctrlrequest** %3, align 8
  %10 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %11 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %10, i32 0, i32 2
  %12 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %11, align 8
  %13 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %12, i64 0
  %14 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %13, align 8
  store %struct.cdns3_endpoint* %14, %struct.cdns3_endpoint** %4, align 8
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %21 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %23 = call i32 @trace_cdns3_ctrl_req(%struct.usb_ctrlrequest* %22)
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %25 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %1
  %29 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %30 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %29, i32 0, i32 1
  %31 = call %struct.usb_request* @cdns3_next_request(i32* %30)
  store %struct.usb_request* %31, %struct.usb_request** %6, align 8
  %32 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %33 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %36 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %4, align 8
  %38 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %39 = call i32 @to_cdns3_request(%struct.usb_request* %38)
  %40 = load i32, i32* @ECONNRESET, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint* %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %28, %1
  %44 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %45 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @CDNS3_DATA_STAGE, align 8
  %51 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %52 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %57

53:                                               ; preds = %43
  %54 = load i64, i64* @CDNS3_STATUS_STAGE, align 8
  %55 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %56 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %59 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @USB_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %57
  %66 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %68 = call i32 @cdns3_ep0_standard_request(%struct.cdns3_device* %66, %struct.usb_ctrlrequest* %67)
  store i32 %68, i32* %5, align 4
  br label %73

69:                                               ; preds = %57
  %70 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %71 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %3, align 8
  %72 = call i32 @cdns3_ep0_delegate_req(%struct.cdns3_device* %70, %struct.usb_ctrlrequest* %71)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @USB_GADGET_DELAYED_STATUS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %94

78:                                               ; preds = %73
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %83 = call i32 @cdns3_ep0_complete_setup(%struct.cdns3_device* %82, i32 1, i32 1)
  br label %94

84:                                               ; preds = %78
  %85 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %86 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CDNS3_STATUS_STAGE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load %struct.cdns3_device*, %struct.cdns3_device** %2, align 8
  %92 = call i32 @cdns3_ep0_complete_setup(%struct.cdns3_device* %91, i32 0, i32 1)
  br label %93

93:                                               ; preds = %90, %84
  br label %94

94:                                               ; preds = %77, %93, %81
  ret void
}

declare dso_local i32 @trace_cdns3_ctrl_req(%struct.usb_ctrlrequest*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @cdns3_gadget_giveback(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @to_cdns3_request(%struct.usb_request*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @cdns3_ep0_standard_request(%struct.cdns3_device*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @cdns3_ep0_delegate_req(%struct.cdns3_device*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @cdns3_ep0_complete_setup(%struct.cdns3_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
