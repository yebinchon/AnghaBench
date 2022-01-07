; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otgregs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otgregs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }

@DWC3_OCFG = common dso_local global i32 0, align 4
@DWC3_OCFG_SFTRSTMASK = common dso_local global i32 0, align 4
@DWC3_GCTL = common dso_local global i32 0, align 4
@DWC3_GCTL_GBLHIBERNATIONEN = common dso_local global i32 0, align 4
@DWC3_OCFG_SRPCAP = common dso_local global i32 0, align 4
@DWC3_OCFG_HNPCAP = common dso_local global i32 0, align 4
@DWC3_OTG_ALL_EVENTS = common dso_local global i32 0, align 4
@DWC3_OCTL = common dso_local global i32 0, align 4
@DWC3_OCTL_PERIMODE = common dso_local global i32 0, align 4
@DWC3_OCTL_DEVSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCTL_HSTSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCTL_HNPREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_otgregs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_otgregs_init(%struct.dwc3* %0) #0 {
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
  %21 = load i32, i32* @DWC3_GCTL, align 4
  %22 = call i32 @dwc3_readl(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @DWC3_GCTL_GBLHIBERNATIONEN, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DWC3_GCTL, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @dwc3_writel(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %34 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DWC3_OCFG, align 4
  %37 = call i32 @dwc3_readl(i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @DWC3_OCFG_SRPCAP, align 4
  %39 = load i32, i32* @DWC3_OCFG_HNPCAP, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %45 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DWC3_OCFG, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @dwc3_writel(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %51 = call i32 @dwc3_otg_clear_events(%struct.dwc3* %50)
  %52 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %53 = load i32, i32* @DWC3_OTG_ALL_EVENTS, align 4
  %54 = call i32 @dwc3_otg_disable_events(%struct.dwc3* %52, i32 %53)
  %55 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %56 = load i32, i32* @DWC3_OTG_ALL_EVENTS, align 4
  %57 = call i32 @dwc3_otg_enable_events(%struct.dwc3* %55, i32 %56)
  %58 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %59 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @DWC3_OCTL, align 4
  %62 = call i32 @dwc3_readl(i32 %60, i32 %61)
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* @DWC3_OCTL_PERIMODE, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* @DWC3_OCTL_DEVSETHNPEN, align 4
  %67 = load i32, i32* @DWC3_OCTL_HSTSETHNPEN, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DWC3_OCTL_HNPREQ, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %3, align 4
  %74 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %75 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DWC3_OCTL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @dwc3_writel(i32 %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @dwc3_otg_clear_events(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_disable_events(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_otg_enable_events(%struct.dwc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
