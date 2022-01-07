; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_feature_handle_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_ep0_feature_handle_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.cdns3_endpoint** }
%struct.cdns3_endpoint = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_ENDPOINT_HALT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EP_WEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.usb_ctrlrequest*, i32)* @cdns3_ep0_feature_handle_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_ep0_feature_handle_endpoint(%struct.cdns3_device* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdns3_device*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdns3_endpoint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %5, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  %15 = load i64, i64* @USB_ENDPOINT_HALT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %22 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_DIR_IN, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %65

29:                                               ; preds = %20
  %30 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %31 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @cdns3_ep_addr_to_index(i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %35 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %34, i32 0, i32 0
  %36 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %36, i64 %37
  %39 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %38, align 8
  store %struct.cdns3_endpoint* %39, %struct.cdns3_endpoint** %8, align 8
  %40 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %41 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %42 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cdns3_select_ep(%struct.cdns3_device* %40, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %49 = call i32 @__cdns3_gadget_ep_set_halt(%struct.cdns3_endpoint* %48)
  br label %61

50:                                               ; preds = %29
  %51 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %52 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @EP_WEDGE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %8, align 8
  %59 = call i32 @__cdns3_gadget_ep_clear_halt(%struct.cdns3_endpoint* %58)
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  %63 = call i32 @cdns3_select_ep(%struct.cdns3_device* %62, i32 0)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %28, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @cdns3_ep_addr_to_index(i32) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @__cdns3_gadget_ep_set_halt(%struct.cdns3_endpoint*) #1

declare dso_local i32 @__cdns3_gadget_ep_clear_halt(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
