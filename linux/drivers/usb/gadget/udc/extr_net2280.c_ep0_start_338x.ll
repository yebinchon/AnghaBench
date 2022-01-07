; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_ep0_start_338x.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_ep0_start_338x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280 = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@CLEAR_NAK_OUT_PACKETS_MODE = common dso_local global i32 0, align 4
@SET_EP_HIDE_STATUS_PHASE = common dso_local global i32 0, align 4
@SET_ISOCHRONOUS_DELAY = common dso_local global i32 0, align 4
@SET_SEL = common dso_local global i32 0, align 4
@SET_TEST_MODE = common dso_local global i32 0, align 4
@SET_ADDRESS = common dso_local global i32 0, align 4
@GET_INTERFACE_STATUS = common dso_local global i32 0, align 4
@GET_DEVICE_STATUS = common dso_local global i32 0, align 4
@USB_ROOT_PORT_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@USB_DETECT_ENABLE = common dso_local global i32 0, align 4
@DEVICE_REMOTE_WAKEUP_ENABLE = common dso_local global i32 0, align 4
@SETUP_PACKET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ENDPOINT_0_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@PCI_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ROOT_PORT_RESET_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@VBUS_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280*)* @ep0_start_338x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_start_338x(%struct.net2280* %0) #0 {
  %2 = alloca %struct.net2280*, align 8
  store %struct.net2280* %0, %struct.net2280** %2, align 8
  %3 = load %struct.net2280*, %struct.net2280** %2, align 8
  %4 = getelementptr inbounds %struct.net2280, %struct.net2280* %3, i32 0, i32 5
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load i32, i32* @CLEAR_NAK_OUT_PACKETS_MODE, align 4
  %9 = call i32 @BIT(i32 %8)
  %10 = load i32, i32* @SET_EP_HIDE_STATUS_PHASE, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = or i32 %9, %11
  %13 = load %struct.net2280*, %struct.net2280** %2, align 8
  %14 = getelementptr inbounds %struct.net2280, %struct.net2280* %13, i32 0, i32 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @writel(i32 %12, i32* %17)
  br label %19

19:                                               ; preds = %7, %1
  %20 = load i32, i32* @SET_ISOCHRONOUS_DELAY, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* @SET_SEL, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* @SET_TEST_MODE, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @SET_ADDRESS, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = or i32 %27, %29
  %31 = load i32, i32* @GET_INTERFACE_STATUS, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* @GET_DEVICE_STATUS, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = or i32 %33, %35
  %37 = load %struct.net2280*, %struct.net2280** %2, align 8
  %38 = getelementptr inbounds %struct.net2280, %struct.net2280* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @writel(i32 %36, i32* %40)
  %42 = load %struct.net2280*, %struct.net2280** %2, align 8
  %43 = getelementptr inbounds %struct.net2280, %struct.net2280* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @USB_ROOT_PORT_WAKEUP_ENABLE, align 4
  %45 = call i32 @BIT(i32 %44)
  %46 = load %struct.net2280*, %struct.net2280** %2, align 8
  %47 = getelementptr inbounds %struct.net2280, %struct.net2280* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USB_DETECT_ENABLE, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %45, %50
  %52 = load i32, i32* @DEVICE_REMOTE_WAKEUP_ENABLE, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.net2280*, %struct.net2280** %2, align 8
  %56 = getelementptr inbounds %struct.net2280, %struct.net2280* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @writel(i32 %54, i32* %58)
  %60 = load i32, i32* @SETUP_PACKET_INTERRUPT_ENABLE, align 4
  %61 = call i32 @BIT(i32 %60)
  %62 = load i32, i32* @ENDPOINT_0_INTERRUPT_ENABLE, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = or i32 %61, %63
  %65 = load %struct.net2280*, %struct.net2280** %2, align 8
  %66 = getelementptr inbounds %struct.net2280, %struct.net2280* %65, i32 0, i32 3
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = call i32 @writel(i32 %64, i32* %68)
  %70 = load i32, i32* @PCI_INTERRUPT_ENABLE, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = load i32, i32* @ROOT_PORT_RESET_INTERRUPT_ENABLE, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = or i32 %71, %73
  %75 = load i32, i32* @SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE, align 4
  %76 = call i32 @BIT(i32 %75)
  %77 = or i32 %74, %76
  %78 = load i32, i32* @VBUS_INTERRUPT_ENABLE, align 4
  %79 = call i32 @BIT(i32 %78)
  %80 = or i32 %77, %79
  %81 = load %struct.net2280*, %struct.net2280** %2, align 8
  %82 = getelementptr inbounds %struct.net2280, %struct.net2280* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = call i32 @writel(i32 %80, i32* %84)
  %86 = load %struct.net2280*, %struct.net2280** %2, align 8
  %87 = getelementptr inbounds %struct.net2280, %struct.net2280* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = call i32 @readl(i32* %89)
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
