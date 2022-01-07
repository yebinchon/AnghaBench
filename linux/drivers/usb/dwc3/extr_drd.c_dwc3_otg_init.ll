; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }

@DWC3_GCTL_PRTCAP_OTG = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_otg_init(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = load i32, i32* @DWC3_GCTL_PRTCAP_OTG, align 4
  %6 = call i32 @dwc3_set_prtcap(%struct.dwc3* %4, i32 %5)
  %7 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %11 = call i32 @dwc3_readl(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @dwc3_writel(i32 %18, i32 %19, i32 %20)
  %22 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %23 = call i32 @dwc3_otgregs_init(%struct.dwc3* %22)
  ret void
}

declare dso_local i32 @dwc3_set_prtcap(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_otgregs_init(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
