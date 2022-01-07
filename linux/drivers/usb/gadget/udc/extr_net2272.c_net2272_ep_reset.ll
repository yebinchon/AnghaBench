; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_ep_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2272.c_net2272_ep_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2272_ep = type { i64, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@net2272_ep_ops = common dso_local global i32 0, align 4
@EP_IRQENB = common dso_local global i32 0, align 4
@NAK_OUT_PACKETS_MODE = common dso_local global i32 0, align 4
@ALT_NAK_OUT_PACKETS = common dso_local global i32 0, align 4
@EP_RSPSET = common dso_local global i32 0, align 4
@INTERRUPT_MODE = common dso_local global i32 0, align 4
@HIDE_STATUS_PHASE = common dso_local global i32 0, align 4
@ENDPOINT_TOGGLE = common dso_local global i32 0, align 4
@ENDPOINT_HALT = common dso_local global i32 0, align 4
@EP_RSPCLR = common dso_local global i32 0, align 4
@EP_STAT0 = common dso_local global i32 0, align 4
@DATA_IN_TOKEN_INTERRUPT = common dso_local global i32 0, align 4
@DATA_OUT_TOKEN_INTERRUPT = common dso_local global i32 0, align 4
@DATA_PACKET_TRANSMITTED_INTERRUPT = common dso_local global i32 0, align 4
@DATA_PACKET_RECEIVED_INTERRUPT = common dso_local global i32 0, align 4
@SHORT_PACKET_TRANSFERRED_INTERRUPT = common dso_local global i32 0, align 4
@EP_STAT1 = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@USB_OUT_ACK_SENT = common dso_local global i32 0, align 4
@USB_OUT_NAK_SENT = common dso_local global i32 0, align 4
@USB_IN_ACK_RCVD = common dso_local global i32 0, align 4
@USB_IN_NAK_SENT = common dso_local global i32 0, align 4
@USB_STALL_SENT = common dso_local global i32 0, align 4
@LOCAL_OUT_ZLP = common dso_local global i32 0, align 4
@BUFFER_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2272_ep*)* @net2272_ep_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net2272_ep_reset(%struct.net2272_ep* %0) #0 {
  %2 = alloca %struct.net2272_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.net2272_ep* %0, %struct.net2272_ep** %2, align 8
  %4 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %5 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %4, i32 0, i32 3
  store i32* null, i32** %5, align 8
  %6 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %7 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %6, i32 0, i32 2
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %10 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %9, i32 0, i32 1
  %11 = call i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_2__* %10, i32 -1)
  %12 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %13 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* @net2272_ep_ops, i32** %14, align 8
  %15 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %16 = load i32, i32* @EP_IRQENB, align 4
  %17 = call i32 @net2272_ep_write(%struct.net2272_ep* %15, i32 %16, i32 0)
  %18 = load i32, i32* @NAK_OUT_PACKETS_MODE, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @ALT_NAK_OUT_PACKETS, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %24 = load i32, i32* @EP_RSPSET, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @net2272_ep_write(%struct.net2272_ep* %23, i32 %24, i32 %25)
  %27 = load i32, i32* @INTERRUPT_MODE, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* @HIDE_STATUS_PHASE, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  store i32 %31, i32* %3, align 4
  %32 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %33 = getelementptr inbounds %struct.net2272_ep, %struct.net2272_ep* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load i32, i32* @ENDPOINT_TOGGLE, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* @ENDPOINT_HALT, align 4
  %40 = shl i32 1, %39
  %41 = or i32 %38, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %46 = load i32, i32* @EP_RSPCLR, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @net2272_ep_write(%struct.net2272_ep* %45, i32 %46, i32 %47)
  %49 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %50 = load i32, i32* @EP_STAT0, align 4
  %51 = load i32, i32* @DATA_IN_TOKEN_INTERRUPT, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* @DATA_OUT_TOKEN_INTERRUPT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @DATA_PACKET_TRANSMITTED_INTERRUPT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @DATA_PACKET_RECEIVED_INTERRUPT, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  %62 = load i32, i32* @SHORT_PACKET_TRANSFERRED_INTERRUPT, align 4
  %63 = shl i32 1, %62
  %64 = or i32 %61, %63
  %65 = call i32 @net2272_ep_write(%struct.net2272_ep* %49, i32 %50, i32 %64)
  %66 = load %struct.net2272_ep*, %struct.net2272_ep** %2, align 8
  %67 = load i32, i32* @EP_STAT1, align 4
  %68 = load i32, i32* @TIMEOUT, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* @USB_OUT_ACK_SENT, align 4
  %71 = shl i32 1, %70
  %72 = or i32 %69, %71
  %73 = load i32, i32* @USB_OUT_NAK_SENT, align 4
  %74 = shl i32 1, %73
  %75 = or i32 %72, %74
  %76 = load i32, i32* @USB_IN_ACK_RCVD, align 4
  %77 = shl i32 1, %76
  %78 = or i32 %75, %77
  %79 = load i32, i32* @USB_IN_NAK_SENT, align 4
  %80 = shl i32 1, %79
  %81 = or i32 %78, %80
  %82 = load i32, i32* @USB_STALL_SENT, align 4
  %83 = shl i32 1, %82
  %84 = or i32 %81, %83
  %85 = load i32, i32* @LOCAL_OUT_ZLP, align 4
  %86 = shl i32 1, %85
  %87 = or i32 %84, %86
  %88 = load i32, i32* @BUFFER_FLUSH, align 4
  %89 = shl i32 1, %88
  %90 = or i32 %87, %89
  %91 = call i32 @net2272_ep_write(%struct.net2272_ep* %66, i32 %67, i32 %90)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @usb_ep_set_maxpacket_limit(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @net2272_ep_write(%struct.net2272_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
