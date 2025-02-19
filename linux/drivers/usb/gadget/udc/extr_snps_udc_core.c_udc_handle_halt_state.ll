; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_handle_halt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_snps_udc_core.c_udc_handle_halt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc_ep = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UDC_EPCTL_S = common dso_local global i32 0, align 4
@UDC_EPCTL_CNAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udc_ep*)* @udc_handle_halt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_handle_halt_state(%struct.udc_ep* %0) #0 {
  %2 = alloca %struct.udc_ep*, align 8
  %3 = alloca i32, align 4
  store %struct.udc_ep* %0, %struct.udc_ep** %2, align 8
  %4 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %5 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %1
  %9 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %10 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @readl(i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @UDC_EPCTL_S, align 4
  %16 = call i32 @AMD_BIT(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %8
  %20 = load i32, i32* @UDC_EPCTL_CNAK, align 4
  %21 = call i32 @AMD_BIT(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %26 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @writel(i32 %24, i32* %28)
  %30 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %31 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %33 = load %struct.udc_ep*, %struct.udc_ep** %2, align 8
  %34 = getelementptr inbounds %struct.udc_ep, %struct.udc_ep* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @UDC_QUEUE_CNAK(%struct.udc_ep* %32, i32 %35)
  br label %37

37:                                               ; preds = %19, %8
  br label %38

38:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @AMD_BIT(i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @UDC_QUEUE_CNAK(%struct.udc_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
