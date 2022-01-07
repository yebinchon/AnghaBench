; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32 }

@DWC3_OCFG = common dso_local global i32 0, align 4
@DWC3_OCFG_SFTRSTMASK = common dso_local global i32 0, align 4
@DWC3_OCTL = common dso_local global i32 0, align 4
@DWC3_OCTL_PERIMODE = common dso_local global i32 0, align 4
@DWC3_OCTL_TERMSELIDPULSE = common dso_local global i32 0, align 4
@DWC3_OCTL_HNPREQ = common dso_local global i32 0, align 4
@DWC3_OCTL_DEVSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCTL_HSTSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OEVTEN_BDEVSESSVLDDETEN = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_otg_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_otg_device_init(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DWC3_OCFG, align 4
  %8 = call i32 @dwc3_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @DWC3_OCFG_SFTRSTMASK, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DWC3_OCFG, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @dwc3_writel(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DWC3_OCTL, align 4
  %22 = call i32 @dwc3_readl(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @DWC3_OCTL_PERIMODE, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @DWC3_OCTL_TERMSELIDPULSE, align 4
  %27 = load i32, i32* @DWC3_OCTL_HNPREQ, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DWC3_OCTL_DEVSETHNPEN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DWC3_OCTL_HSTSETHNPEN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %37 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DWC3_OCTL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @dwc3_writel(i32 %38, i32 %39, i32 %40)
  %42 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %43 = load i32, i32* @DWC3_OEVTEN_BDEVSESSVLDDETEN, align 4
  %44 = call i32 @dwc3_otg_enable_events(%struct.dwc3* %42, i32 %43)
  %45 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %64, label %49

49:                                               ; preds = %1
  %50 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %51 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %54 = call i32 @dwc3_readl(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @dwc3_writel(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %49, %1
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_otg_enable_events(%struct.dwc3*, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
