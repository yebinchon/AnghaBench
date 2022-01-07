; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_stall_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_ep_stall_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32, %struct.cdns3_device* }
%struct.cdns3_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EP_CMD_DFLUSH = common dso_local global i32 0, align 4
@EP_CMD_ERDY = common dso_local global i32 0, align 4
@EP_CMD_SSTALL = common dso_local global i32 0, align 4
@EP_STALLED = common dso_local global i32 0, align 4
@EP_STALL_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_endpoint*)* @cdns3_ep_stall_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_ep_stall_flush(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %5 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %6 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %5, i32 0, i32 1
  %7 = load %struct.cdns3_device*, %struct.cdns3_device** %6, align 8
  store %struct.cdns3_device* %7, %struct.cdns3_device** %3, align 8
  %8 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %9 = call i32 @trace_cdns3_halt(%struct.cdns3_endpoint* %8, i32 1, i32 1)
  %10 = load i32, i32* @EP_CMD_DFLUSH, align 4
  %11 = load i32, i32* @EP_CMD_ERDY, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @EP_CMD_SSTALL, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %16 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @writel(i32 %14, i32* %18)
  %20 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %21 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EP_CMD_DFLUSH, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @readl_poll_timeout_atomic(i32* %23, i32 %24, i32 %30, i32 1, i32 1000)
  %32 = load i32, i32* @EP_STALLED, align 4
  %33 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %34 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @EP_STALL_PENDING, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %40 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  ret void
}

declare dso_local i32 @trace_cdns3_halt(%struct.cdns3_endpoint*, i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl_poll_timeout_atomic(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
