; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_reset_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_reset_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i64, i32, i32, i64 }

@DWC3_REVISION_188A = common dso_local global i64 0, align 8
@DWC3_DCTL = common dso_local global i32 0, align 4
@DWC3_DCTL_TSTCTRL_MASK = common dso_local global i32 0, align 4
@DWC3_DCFG = common dso_local global i32 0, align 4
@DWC3_DCFG_DEVADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_gadget_reset_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_reset_interrupt(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %7 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @DWC3_REVISION_188A, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %18 = call i32 @dwc3_gadget_disconnect_interrupt(%struct.dwc3* %17)
  br label %19

19:                                               ; preds = %16, %11
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %22 = call i32 @dwc3_reset_gadget(%struct.dwc3* %21)
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DWC3_DCTL, align 4
  %27 = call i32 @dwc3_readl(i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @DWC3_DCTL_TSTCTRL_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %33 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @DWC3_DCTL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @dwc3_writel(i32 %34, i32 %35, i32 %36)
  %38 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 2
  store i32 0, i32* %39, align 8
  %40 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %41 = call i32 @dwc3_clear_stall_all_ep(%struct.dwc3* %40)
  %42 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %43 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DWC3_DCFG, align 4
  %46 = call i32 @dwc3_readl(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* @DWC3_DCFG_DEVADDR_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %52 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DWC3_DCFG, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @dwc3_writel(i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @dwc3_gadget_disconnect_interrupt(%struct.dwc3*) #1

declare dso_local i32 @dwc3_reset_gadget(%struct.dwc3*) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_clear_stall_all_ep(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
