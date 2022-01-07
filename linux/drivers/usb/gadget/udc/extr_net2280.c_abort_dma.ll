; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_abort_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_abort_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net2280_ep = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net2280_ep*)* @abort_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abort_dma(%struct.net2280_ep* %0) #0 {
  %2 = alloca %struct.net2280_ep*, align 8
  store %struct.net2280_ep* %0, %struct.net2280_ep** %2, align 8
  %3 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %4 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %3, i32 0, i32 1
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @likely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @DMA_ABORT, align 4
  %13 = call i32 @BIT(i32 %12)
  %14 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %15 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @writel(i32 %13, i32* %17)
  %19 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %20 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = call i32 @spin_stop_dma(%struct.TYPE_3__* %21)
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %25 = getelementptr inbounds %struct.net2280_ep, %struct.net2280_ep* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @stop_dma(%struct.TYPE_3__* %26)
  br label %28

28:                                               ; preds = %23, %11
  %29 = load %struct.net2280_ep*, %struct.net2280_ep** %2, align 8
  %30 = call i32 @scan_dma_completions(%struct.net2280_ep* %29)
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_stop_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @stop_dma(%struct.TYPE_3__*) #1

declare dso_local i32 @scan_dma_completions(%struct.net2280_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
