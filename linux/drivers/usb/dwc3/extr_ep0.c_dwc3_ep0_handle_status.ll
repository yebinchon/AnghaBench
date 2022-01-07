; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { %struct.TYPE_6__, i64, %struct.dwc3_ep**, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dwc3_ep* }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.dwc3_ep = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_ctrlrequest = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i64 0, align 8
@DWC3_DSTS_SUPERSPEED = common dso_local global i32 0, align 4
@DWC3_DSTS_SUPERSPEED_PLUS = common dso_local global i32 0, align 4
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_INITU1ENA = common dso_local global i64 0, align 8
@USB_DEV_STAT_U1_ENABLED = common dso_local global i32 0, align 4
@DWC3_DCTL_INITU2ENA = common dso_local global i64 0, align 8
@USB_DEV_STAT_U2_ENABLED = common dso_local global i32 0, align 4
@DWC3_EP_STALL = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@dwc3_ep0_status_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*)* @dwc3_ep0_handle_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_handle_status(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.dwc3_ep*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %13 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %136

21:                                               ; preds = %2
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %23 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_RECIP_MASK, align 8
  %26 = and i64 %24, %25
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  switch i64 %27, label %96 [
    i64 130, label %28
    i64 128, label %73
    i64 129, label %74
  ]

28:                                               ; preds = %21
  %29 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %36 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DWC3_DSTS_SUPERSPEED, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %28
  %41 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DWC3_DSTS_SUPERSPEED_PLUS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %40, %28
  %47 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DWC3_DCTL, align 4
  %51 = call i64 @dwc3_readl(i32 %49, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @DWC3_DCTL_INITU1ENA, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @USB_DEV_STAT_U1_ENABLED, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %56, %46
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @DWC3_DCTL_INITU2ENA, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i32, i32* @USB_DEV_STAT_U2_ENABLED, align 4
  %68 = shl i32 1, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %40
  br label %99

73:                                               ; preds = %21
  br label %99

74:                                               ; preds = %21
  %75 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %76 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %77 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.dwc3_ep* @dwc3_wIndex_to_dep(%struct.dwc3* %75, i32 %78)
  store %struct.dwc3_ep* %79, %struct.dwc3_ep** %6, align 8
  %80 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %81 = icmp ne %struct.dwc3_ep* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %136

85:                                               ; preds = %74
  %86 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %87 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DWC3_EP_STALL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %94 = shl i32 1, %93
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %85
  br label %99

96:                                               ; preds = %21
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %136

99:                                               ; preds = %95, %73, %72
  %100 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %101 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i32*
  store i32* %103, i32** %11, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @cpu_to_le16(i32 %104)
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %108 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %107, i32 0, i32 2
  %109 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %108, align 8
  %110 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %109, i64 0
  %111 = load %struct.dwc3_ep*, %struct.dwc3_ep** %110, align 8
  store %struct.dwc3_ep* %111, %struct.dwc3_ep** %6, align 8
  %112 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %113 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %114 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store %struct.dwc3_ep* %112, %struct.dwc3_ep** %115, align 8
  %116 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %117 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i32 4, i32* %119, align 8
  %120 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %121 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %124 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  store i64 %122, i64* %126, align 8
  %127 = load i32, i32* @dwc3_ep0_status_cmpl, align 4
  %128 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %129 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load %struct.dwc3_ep*, %struct.dwc3_ep** %6, align 8
  %133 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %134 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %133, i32 0, i32 0
  %135 = call i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep* %132, %struct.TYPE_6__* %134)
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %99, %96, %82, %18
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @dwc3_readl(i32, i32) #1

declare dso_local %struct.dwc3_ep* @dwc3_wIndex_to_dep(%struct.dwc3*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
