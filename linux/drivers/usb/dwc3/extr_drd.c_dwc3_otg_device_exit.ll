; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_device_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_device_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }

@DWC3_OEVTEN_BDEVHNPCHNGEN = common dso_local global i32 0, align 4
@DWC3_OEVTEN_BDEVVBUSCHNGEN = common dso_local global i32 0, align 4
@DWC3_OEVTEN_BDEVBHOSTENDEN = common dso_local global i32 0, align 4
@DWC3_OCTL = common dso_local global i32 0, align 4
@DWC3_OCTL_DEVSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCTL_HNPREQ = common dso_local global i32 0, align 4
@DWC3_OCTL_PERIMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_otg_device_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_otg_device_exit(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = load i32, i32* @DWC3_OEVTEN_BDEVHNPCHNGEN, align 4
  %6 = load i32, i32* @DWC3_OEVTEN_BDEVVBUSCHNGEN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @DWC3_OEVTEN_BDEVBHOSTENDEN, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @dwc3_otg_disable_events(%struct.dwc3* %4, i32 %9)
  %11 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DWC3_OCTL, align 4
  %15 = call i32 @dwc3_readl(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @DWC3_OCTL_DEVSETHNPEN, align 4
  %17 = load i32, i32* @DWC3_OCTL_HNPREQ, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @DWC3_OCTL_PERIMODE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DWC3_OCTL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dwc3_writel(i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @dwc3_otg_disable_events(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
