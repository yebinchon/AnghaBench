; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_reprime_dtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_reprime_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32 }
%struct.ci_hw_ep = type { i64, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.td_node = type { i32 }

@TD_STATUS_HALTED = common dso_local global i32 0, align 4
@TD_STATUS_ACTIVE = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc*, %struct.ci_hw_ep*, %struct.td_node*)* @reprime_dtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reprime_dtd(%struct.ci_hdrc* %0, %struct.ci_hw_ep* %1, %struct.td_node* %2) #0 {
  %4 = alloca %struct.ci_hdrc*, align 8
  %5 = alloca %struct.ci_hw_ep*, align 8
  %6 = alloca %struct.td_node*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %4, align 8
  store %struct.ci_hw_ep* %1, %struct.ci_hw_ep** %5, align 8
  store %struct.td_node* %2, %struct.td_node** %6, align 8
  %7 = load %struct.td_node*, %struct.td_node** %6, align 8
  %8 = getelementptr inbounds %struct.td_node, %struct.td_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cpu_to_le32(i32 %9)
  %11 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %5, align 8
  %12 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %10, i32* %16, align 4
  %17 = load i32, i32* @TD_STATUS_HALTED, align 4
  %18 = load i32, i32* @TD_STATUS_ACTIVE, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = call i32 @cpu_to_le32(i32 %20)
  %22 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %5, align 8
  %23 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %21
  store i32 %29, i32* %27, align 4
  %30 = load %struct.ci_hdrc*, %struct.ci_hdrc** %4, align 8
  %31 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %5, align 8
  %32 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %5, align 8
  %35 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %5, align 8
  %38 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @hw_ep_prime(%struct.ci_hdrc* %30, i32 %33, i32 %36, i32 %42)
  ret i32 %43
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hw_ep_prime(%struct.ci_hdrc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
