; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ep0_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_mv_udc_core.c_ep0_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_udc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.mv_ep* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mv_ep = type { %struct.TYPE_3__*, %struct.mv_udc* }

@EP0_MAX_PKT_SIZE = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_MAX_PKT_LEN_POS = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_IOS = common dso_local global i32 0, align 4
@EP_QUEUE_HEAD_NEXT_TERMINATE = common dso_local global i32 0, align 4
@EPCTRL_TX_ENABLE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i32 0, align 4
@EPCTRL_TX_EP_TYPE_SHIFT = common dso_local global i32 0, align 4
@EPCTRL_RX_ENABLE = common dso_local global i32 0, align 4
@EPCTRL_RX_EP_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_udc*)* @ep0_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep0_reset(%struct.mv_udc* %0) #0 {
  %2 = alloca %struct.mv_udc*, align 8
  %3 = alloca %struct.mv_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv_udc* %0, %struct.mv_udc** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %75, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %78

9:                                                ; preds = %6
  %10 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %11 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %10, i32 0, i32 2
  %12 = load %struct.mv_ep*, %struct.mv_ep** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %12, i64 %14
  store %struct.mv_ep* %15, %struct.mv_ep** %3, align 8
  %16 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %17 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %18 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %17, i32 0, i32 1
  store %struct.mv_udc* %16, %struct.mv_udc** %18, align 8
  %19 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %20 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %26 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %25, i32 0, i32 0
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %26, align 8
  %27 = load i32, i32* @EP0_MAX_PKT_SIZE, align 4
  %28 = load i32, i32* @EP_QUEUE_HEAD_MAX_PKT_LEN_POS, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @EP_QUEUE_HEAD_IOS, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %33 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @EP_QUEUE_HEAD_NEXT_TERMINATE, align 4
  %37 = load %struct.mv_ep*, %struct.mv_ep** %3, align 8
  %38 = getelementptr inbounds %struct.mv_ep, %struct.mv_ep* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %42 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = call i32 @readl(i32* %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %9
  %51 = load i32, i32* @EPCTRL_TX_ENABLE, align 4
  %52 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %53 = load i32, i32* @EPCTRL_TX_EP_TYPE_SHIFT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %66

58:                                               ; preds = %9
  %59 = load i32, i32* @EPCTRL_RX_ENABLE, align 4
  %60 = load i32, i32* @USB_ENDPOINT_XFER_CONTROL, align 4
  %61 = load i32, i32* @EPCTRL_RX_EP_TYPE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = or i32 %59, %62
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %50
  %67 = load i32, i32* %4, align 4
  %68 = load %struct.mv_udc*, %struct.mv_udc** %2, align 8
  %69 = getelementptr inbounds %struct.mv_udc, %struct.mv_udc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @writel(i32 %67, i32* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %6

78:                                               ; preds = %6
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
