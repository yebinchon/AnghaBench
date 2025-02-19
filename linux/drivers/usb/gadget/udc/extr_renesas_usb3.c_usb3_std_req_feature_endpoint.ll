; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_feature_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_feature_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.renesas_usb3_ep = type { i32 }
%struct.renesas_usb3_request = type { i32 }

@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3*, %struct.usb_ctrlrequest*, i32)* @usb3_std_req_feature_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_std_req_feature_endpoint(%struct.renesas_usb3* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.renesas_usb3*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.renesas_usb3_ep*, align 8
  %10 = alloca %struct.renesas_usb3_request*, align 8
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %5, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  %15 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  %21 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load %struct.renesas_usb3*, %struct.renesas_usb3** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3* %25, i32 %26)
  store %struct.renesas_usb3_ep* %27, %struct.renesas_usb3_ep** %9, align 8
  %28 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @usb3_set_halt(%struct.renesas_usb3_ep* %28, i32 %29, i32 1)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %24
  %34 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %9, align 8
  %35 = getelementptr inbounds %struct.renesas_usb3_ep, %struct.renesas_usb3_ep* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %9, align 8
  %37 = call %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep* %36)
  store %struct.renesas_usb3_request* %37, %struct.renesas_usb3_request** %10, align 8
  %38 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %10, align 8
  %39 = icmp ne %struct.renesas_usb3_request* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.renesas_usb3_ep*, %struct.renesas_usb3_ep** %9, align 8
  %42 = load %struct.renesas_usb3_request*, %struct.renesas_usb3_request** %10, align 8
  %43 = call i32 @usb3_start_pipen(%struct.renesas_usb3_ep* %41, %struct.renesas_usb3_request* %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %24
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.renesas_usb3_ep* @usb3_get_ep(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_set_halt(%struct.renesas_usb3_ep*, i32, i32) #1

declare dso_local %struct.renesas_usb3_request* @usb3_get_request(%struct.renesas_usb3_ep*) #1

declare dso_local i32 @usb3_start_pipen(%struct.renesas_usb3_ep*, %struct.renesas_usb3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
