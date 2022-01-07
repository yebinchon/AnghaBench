; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_set_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { %struct.TYPE_2__, %struct.cdns3_endpoint** }
%struct.TYPE_2__ = type { i32 }
%struct.cdns3_endpoint = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@CDNS3_ENDPOINTS_MAX_COUNT = common dso_local global i32 0, align 4
@EP_CLAIMED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.usb_ctrlrequest*)* @cdns3_req_ep0_set_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_req_ep0_set_configuration(%struct.cdns3_device* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdns3_endpoint*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cdns3_device* %0, %struct.cdns3_device** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %11 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %12 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %87 [
    i32 129, label %20
    i32 128, label %71
  ]

20:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @CDNS3_ENDPOINTS_MAX_COUNT, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %27 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %26, i32 0, i32 1
  %28 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %28, i64 %30
  %32 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %31, align 8
  store %struct.cdns3_endpoint* %32, %struct.cdns3_endpoint** %7, align 8
  %33 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, align 8
  %34 = icmp ne %struct.cdns3_endpoint* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %25
  %37 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, align 8
  %38 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @EP_CLAIMED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %7, align 8
  %45 = call i32 @cdns3_ep_config(%struct.cdns3_endpoint* %44)
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %21

50:                                               ; preds = %21
  %51 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %53 = call i32 @cdns3_ep0_delegate_req(%struct.cdns3_device* %51, %struct.usb_ctrlrequest* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %92

58:                                               ; preds = %50
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %63 = call i32 @cdns3_set_hw_configuration(%struct.cdns3_device* %62)
  br label %70

64:                                               ; preds = %58
  %65 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %66 = call i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device* %65)
  %67 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %68 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %67, i32 0, i32 0
  %69 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %68, i32 129)
  br label %70

70:                                               ; preds = %64, %61
  br label %90

71:                                               ; preds = %2
  %72 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %73 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %74 = call i32 @cdns3_ep0_delegate_req(%struct.cdns3_device* %72, %struct.usb_ctrlrequest* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %82 = call i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device* %81)
  %83 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %84 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %83, i32 0, i32 0
  %85 = call i32 @usb_gadget_set_state(%struct.TYPE_2__* %84, i32 129)
  br label %86

86:                                               ; preds = %80, %77, %71
  br label %90

87:                                               ; preds = %2
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %87, %86, %70
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %56
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cdns3_ep_config(%struct.cdns3_endpoint*) #1

declare dso_local i32 @cdns3_ep0_delegate_req(%struct.cdns3_device*, %struct.usb_ctrlrequest*) #1

declare dso_local i32 @cdns3_set_hw_configuration(%struct.cdns3_device*) #1

declare dso_local i32 @cdns3_hw_reset_eps_config(%struct.cdns3_device*) #1

declare dso_local i32 @usb_gadget_set_state(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
