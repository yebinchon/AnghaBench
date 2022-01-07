; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_host_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_otg_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32 }

@DWC3_OCTL = common dso_local global i32 0, align 4
@DWC3_OCTL_PERIMODE = common dso_local global i32 0, align 4
@DWC3_OCTL_TERMSELIDPULSE = common dso_local global i32 0, align 4
@DWC3_OCTL_DEVSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCTL_HSTSETHNPEN = common dso_local global i32 0, align 4
@DWC3_OCFG = common dso_local global i32 0, align 4
@DWC3_OCFG_DISPWRCUTTOFF = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4
@DWC3_OCTL_PRTPWRCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc3_otg_host_init(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DWC3_OCTL, align 4
  %8 = call i32 @dwc3_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @DWC3_OCTL_PERIMODE, align 4
  %10 = load i32, i32* @DWC3_OCTL_TERMSELIDPULSE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @DWC3_OCTL_DEVSETHNPEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DWC3_OCTL_HSTSETHNPEN, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DWC3_OCTL, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @dwc3_writel(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DWC3_OCFG, align 4
  %29 = call i32 @dwc3_readl(i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* @DWC3_OCFG_DISPWRCUTTOFF, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DWC3_OCFG, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @dwc3_writel(i32 %36, i32 %37, i32 %38)
  %40 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %1
  %45 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %49 = call i32 @dwc3_readl(i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @dwc3_writel(i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %1
  %60 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %61 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DWC3_OCTL, align 4
  %64 = call i32 @dwc3_readl(i32 %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @DWC3_OCTL_PRTPWRCTL, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %69 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DWC3_OCTL, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @dwc3_writel(i32 %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
