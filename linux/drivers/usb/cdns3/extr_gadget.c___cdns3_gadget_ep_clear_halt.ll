; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_clear_halt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c___cdns3_gadget_ep_clear_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_request = type { i32 }

@EP_CMD_CSTALL = common dso_local global i32 0, align 4
@EP_CMD_EPRST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cdns3_gadget_ep_clear_halt(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdns3_endpoint*, align 8
  %4 = alloca %struct.cdns3_device*, align 8
  %5 = alloca %struct.usb_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %3, align 8
  %8 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %9 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %8, i32 0, i32 2
  %10 = load %struct.cdns3_device*, %struct.cdns3_device** %9, align 8
  store %struct.cdns3_device* %10, %struct.cdns3_device** %4, align 8
  %11 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %12 = call i32 @trace_cdns3_halt(%struct.cdns3_endpoint* %11, i32 0, i32 0)
  %13 = load i32, i32* @EP_CMD_CSTALL, align 4
  %14 = load i32, i32* @EP_CMD_EPRST, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %17 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @writel(i32 %15, i32* %19)
  %21 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %22 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EP_CMD_EPRST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @readl_poll_timeout_atomic(i32* %24, i32 %25, i32 %31, i32 1, i32 100)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %60

38:                                               ; preds = %1
  %39 = load i32, i32* @EP_STALLED, align 4
  %40 = load i32, i32* @EP_STALL_PENDING, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %44 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %48 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %47, i32 0, i32 1
  %49 = call %struct.usb_request* @cdns3_next_request(i32* %48)
  store %struct.usb_request* %49, %struct.usb_request** %5, align 8
  %50 = load %struct.usb_request*, %struct.usb_request** %5, align 8
  %51 = icmp ne %struct.usb_request* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %54 = call i32 @cdns3_rearm_transfer(%struct.cdns3_endpoint* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.cdns3_device*, %struct.cdns3_device** %4, align 8
  %57 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %3, align 8
  %58 = call i32 @cdns3_start_all_request(%struct.cdns3_device* %56, %struct.cdns3_endpoint* %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %35
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @trace_cdns3_halt(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

declare dso_local %struct.usb_request* @cdns3_next_request(i32*) #1

declare dso_local i32 @cdns3_rearm_transfer(%struct.cdns3_endpoint*, i32) #1

declare dso_local i32 @cdns3_start_all_request(%struct.cdns3_device*, %struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
