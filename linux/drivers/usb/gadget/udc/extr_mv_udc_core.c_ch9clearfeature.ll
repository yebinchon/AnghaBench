; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9clearfeature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ch9clearfeature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { i32, i32, %struct.mv_ep*, i32 }
%struct.mv_ep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@EP_DIR_IN = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*, %struct.usb_ctrlrequest*)* @ch9clearfeature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9clearfeature(%struct.mv_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.mv_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_ep*, align 8
  store %struct.mv_udc* %0, %struct.mv_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %8 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %9 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @USB_TYPE_MASK, align 4
  %12 = load i32, i32* @USB_RECIP_MASK, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %16 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %17 = or i32 %15, %16
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %21 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 129, label %23
  ]

23:                                               ; preds = %19
  %24 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %25 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %24, i32 0, i32 3
  store i32 0, i32* %25, align 8
  br label %27

26:                                               ; preds = %19
  br label %117

27:                                               ; preds = %23
  br label %108

28:                                               ; preds = %2
  %29 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %30 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @USB_TYPE_MASK, align 4
  %33 = load i32, i32* @USB_RECIP_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %37 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %28
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %104 [
    i32 128, label %44
  ]

44:                                               ; preds = %40
  %45 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %5, align 4
  %50 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %51 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @EP_DIR_IN, align 4
  br label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @EP_DIR_OUT, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %6, align 4
  %62 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %63 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %60
  %67 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %68 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %74 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp sgt i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %66, %60
  br label %117

78:                                               ; preds = %71
  %79 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %80 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %79, i32 0, i32 2
  %81 = load %struct.mv_ep*, %struct.mv_ep** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 2
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %81, i64 %86
  store %struct.mv_ep* %87, %struct.mv_ep** %7, align 8
  %88 = load %struct.mv_ep*, %struct.mv_ep** %7, align 8
  %89 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %78
  br label %105

93:                                               ; preds = %78
  %94 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %95 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %94, i32 0, i32 1
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ep_set_stall(%struct.mv_udc* %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %102 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %101, i32 0, i32 1
  %103 = call i32 @spin_lock(i32* %102)
  br label %105

104:                                              ; preds = %40
  br label %117

105:                                              ; preds = %93, %92
  br label %107

106:                                              ; preds = %28
  br label %117

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %27
  %109 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %110 = load i32, i32* @EP_DIR_IN, align 4
  %111 = call i64 @udc_prime_status(%struct.mv_udc* %109, i32 %110, i32 0, i32 1)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.mv_udc*, %struct.mv_udc** %3, align 8
  %115 = call i32 @ep0_stall(%struct.mv_udc* %114)
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116, %106, %104, %77, %26
  ret void
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ep_set_stall(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @udc_prime_status(%struct.mv_udc*, i32, i32, i32) #1

declare dso_local i32 @ep0_stall(%struct.mv_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
