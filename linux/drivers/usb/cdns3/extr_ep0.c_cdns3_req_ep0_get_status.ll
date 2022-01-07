; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_ep0.c_cdns3_req_ep0_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_device = type { i32, i64, %struct.TYPE_4__*, %struct.cdns3_endpoint**, i32, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cdns3_endpoint = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_DEV_STAT_U1_ENABLED = common dso_local global i32 0, align 4
@USB_DEV_STAT_U2_ENABLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdns3_device*, %struct.usb_ctrlrequest*)* @cdns3_req_ep0_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdns3_req_ep0_get_status(%struct.cdns3_device* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.cdns3_endpoint*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cdns3_device* %0, %struct.cdns3_device** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @USB_RECIP_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %102 [
    i32 130, label %17
    i32 128, label %64
    i32 129, label %68
  ]

17:                                               ; preds = %2
  %18 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %19 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %24 = call i32 @BIT(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %27 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %37 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @USB_SPEED_SUPER, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %105

43:                                               ; preds = %35
  %44 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %45 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @USB_DEV_STAT_U1_ENABLED, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %55 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @USB_DEV_STAT_U2_ENABLED, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %53
  br label %105

64:                                               ; preds = %2
  %65 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %67 = call i32 @cdns3_ep0_delegate_req(%struct.cdns3_device* %65, %struct.usb_ctrlrequest* %66)
  store i32 %67, i32* %3, align 4
  br label %118

68:                                               ; preds = %2
  %69 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %70 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @cdns3_ep_addr_to_index(i32 %71)
  store i64 %72, i64* %10, align 8
  %73 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %74 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %73, i32 0, i32 3
  %75 = load %struct.cdns3_endpoint**, %struct.cdns3_endpoint*** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %75, i64 %76
  %78 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %77, align 8
  store %struct.cdns3_endpoint* %78, %struct.cdns3_endpoint** %6, align 8
  %79 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %80 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %81 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @cdns3_select_ep(%struct.cdns3_device* %79, i32 %82)
  %84 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %85 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @readl(i32* %87)
  %89 = call i32 @EP_STS_STALL(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %68
  %92 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %6, align 8
  %93 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @EP_STALL_PENDING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91, %68
  %99 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %100 = call i32 @BIT(i32 %99)
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %98, %91
  br label %105

102:                                              ; preds = %2
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %118

105:                                              ; preds = %101, %63, %42
  %106 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %107 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @cpu_to_le16(i32 %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %114 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %115 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @cdns3_ep0_run_transfer(%struct.cdns3_device* %113, i32 %116, i32 4, i32 1, i32 0)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %105, %102, %64
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cdns3_ep0_delegate_req(%struct.cdns3_device*, %struct.usb_ctrlrequest*) #1

declare dso_local i64 @cdns3_ep_addr_to_index(i32) #1

declare dso_local i32 @cdns3_select_ep(%struct.cdns3_device*, i32) #1

declare dso_local i32 @EP_STS_STALL(i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cdns3_ep0_run_transfer(%struct.cdns3_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
