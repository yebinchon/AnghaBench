; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_config_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fusb300_udc.c_config_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb300_ep = type { %struct.TYPE_2__, %struct.fusb300* }
%struct.TYPE_2__ = type { %struct.usb_endpoint_descriptor* }
%struct.fusb300 = type { %struct.fusb300_ep** }
%struct.usb_endpoint_descriptor = type { i32, i32, i64 }
%struct.fusb300_ep_info = type { i32, i32, i32, i64, i64, i32, i64 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb300_ep*, %struct.usb_endpoint_descriptor*)* @config_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_ep(%struct.fusb300_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.fusb300_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.fusb300*, align 8
  %6 = alloca %struct.fusb300_ep_info, align 8
  store %struct.fusb300_ep* %0, %struct.fusb300_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %7 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %8 = getelementptr inbounds %struct.fusb300_ep, %struct.fusb300_ep* %7, i32 0, i32 1
  %9 = load %struct.fusb300*, %struct.fusb300** %8, align 8
  store %struct.fusb300* %9, %struct.fusb300** %5, align 8
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %11 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %12 = getelementptr inbounds %struct.fusb300_ep, %struct.fusb300_ep* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %10, %struct.usb_endpoint_descriptor** %13, align 8
  %14 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 6
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %18 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %21 = and i32 %19, %20
  %22 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %33 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %32)
  %34 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 5
  store i32 %33, i32* %34, align 8
  %35 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %36 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %39 = and i32 %37, %38
  %40 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %2
  %46 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %45, %2
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 4
  store i64 %53, i64* %54, align 8
  %55 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %61 = call i64 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %60)
  %62 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 3
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %50
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.fusb300*, %struct.fusb300** %5, align 8
  %66 = call i32 @ep_fifo_setting(%struct.fusb300* %65, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %6)
  %67 = load %struct.fusb300*, %struct.fusb300** %5, align 8
  %68 = call i32 @set_ep_reg(%struct.fusb300* %67, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %6)
  %69 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %70 = call i32 @fusb300_ep_setting(%struct.fusb300_ep* %69, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8 %6)
  %71 = load %struct.fusb300_ep*, %struct.fusb300_ep** %3, align 8
  %72 = load %struct.fusb300*, %struct.fusb300** %5, align 8
  %73 = getelementptr inbounds %struct.fusb300, %struct.fusb300* %72, i32 0, i32 0
  %74 = load %struct.fusb300_ep**, %struct.fusb300_ep*** %73, align 8
  %75 = getelementptr inbounds %struct.fusb300_ep_info, %struct.fusb300_ep_info* %6, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.fusb300_ep*, %struct.fusb300_ep** %74, i64 %77
  store %struct.fusb300_ep* %71, %struct.fusb300_ep** %78, align 8
  ret i32 0
}

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @ep_fifo_setting(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @set_ep_reg(%struct.fusb300*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

declare dso_local i32 @fusb300_ep_setting(%struct.fusb300_ep*, %struct.fusb300_ep_info* byval(%struct.fusb300_ep_info) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
