; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.renesas_usb3_ep = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"get_status: req = %p\0A\00", align 1
@usb3_pipe0_get_status_completion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3*, %struct.usb_ctrlrequest*)* @usb3_std_req_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_std_req_get_status(%struct.renesas_usb3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.renesas_usb3_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @USB_RECIP_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %60 [
    i32 130, label %15
    i32 128, label %39
    i32 129, label %40
  ]

15:                                               ; preds = %2
  %16 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %17 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* %8, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %28 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_SPEED_SUPER, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %35 = call i32 @usb3_feature_get_un_enabled(%struct.renesas_usb3* %34)
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %26
  br label %61

39:                                               ; preds = %2
  br label %61

40:                                               ; preds = %2
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  %45 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %46 = and i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %47, i32 %48)
  store %struct.renesas_usb3_ep* %49, %struct.renesas_usb3_ep** %6, align 8
  %50 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %6, align 8
  %51 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %40
  %55 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %40
  br label %61

60:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %59, %39, %38
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %68 = call i32 @usb3_to_dev(%struct.renesas_usb3* %67)
  %69 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %70 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @usb_req_to_usb3_req(i32 %71)
  %73 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %75 = load i32, i32* @usb3_pipe0_get_status_completion, align 4
  %76 = call i32 @usb3_pipe0_internal_xfer(%struct.renesas_usb3* %74, i32* %9, i32 4, i32 %75)
  br label %77

77:                                               ; preds = %64, %61
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @usb3_feature_get_un_enabled(%struct.renesas_usb3*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @usb3_to_dev(%struct.renesas_usb3*) #1

declare dso_local i32 @usb_req_to_usb3_req(i32) #1

declare dso_local i32 @usb3_pipe0_internal_xfer(%struct.renesas_usb3*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
