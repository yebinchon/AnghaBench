; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9getstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*, i32, %struct.usb_ctrlrequest*)* @ch9getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9getstatus(%struct.mv_udc* %0, i32 %1, %struct.usb_ctrlrequest* %2) #0 {
  %4 = alloca %struct.mv_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.usb_ctrlrequest* %2, %struct.usb_ctrlrequest** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = load i32, i32* @USB_TYPE_MASK, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @USB_DIR_IN, align 4
  %19 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %20 = or i32 %18, %19
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %98

23:                                               ; preds = %3
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_RECIP_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mv_udc*, %struct.mv_udc** %4, align 8
  %35 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %84

41:                                               ; preds = %23
  %42 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %43 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @USB_RECIP_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %83

50:                                               ; preds = %41
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USB_RECIP_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %60 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %65 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i32, i32* @EP_DIR_IN, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @EP_DIR_OUT, align 4
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %71, %70 ], [ %73, %72 ]
  store i32 %75, i32* %10, align 4
  %76 = load %struct.mv_udc*, %struct.mv_udc** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ep_is_stall(%struct.mv_udc* %76, i32 %77, i32 %78)
  %80 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %81 = shl i32 %79, %80
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %74, %50
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %31
  %85 = load %struct.mv_udc*, %struct.mv_udc** %4, align 8
  %86 = load i32, i32* @EP_DIR_IN, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @udc_prime_status(%struct.mv_udc* %85, i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.mv_udc*, %struct.mv_udc** %4, align 8
  %93 = call i32 @ep0_stall(%struct.mv_udc* %92)
  br label %98

94:                                               ; preds = %84
  %95 = load i32, i32* @DATA_STATE_XMIT, align 4
  %96 = load %struct.mv_udc*, %struct.mv_udc** %4, align 8
  %97 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %22, %94, %91
  ret void
}

declare dso_local i32 @ep_is_stall(%struct.mv_udc*, i32, i32) #1

declare dso_local i32 @udc_prime_status(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @ep0_stall(%struct.mv_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
