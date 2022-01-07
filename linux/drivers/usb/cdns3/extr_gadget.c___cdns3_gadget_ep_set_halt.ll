; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_set_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_set_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, %struct.cdns3_device* }
%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP_STALLED = common dso_local global i32 0, align 4
@EP_STS_DBUSY = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cdns3_gadget_ep_set_halt(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %5 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %5, i32 0, i32 1
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  store %struct.cdns3_device* %7, %struct.cdns3_device** %3, align 8
  %8 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %9 = call i32 @trace_cdns3_halt(%struct.cdns3_endpoint* %8, i32 1, i32 0)
  %10 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %11 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @EP_STALLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %1
  %17 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %18 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @readl(i32* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EP_STS_DBUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %16
  %27 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %28 = call i32 @cdns3_ep_stall_flush(%struct.cdns3_endpoint* %27)
  br label %35

29:                                               ; preds = %16
  %30 = load i32, i32* @EP_STALL_PENDING, align 4
  %31 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %32 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %35, %1
  ret void
}

declare dso_local i32 @trace_cdns3_halt(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @cdns3_ep_stall_flush(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
