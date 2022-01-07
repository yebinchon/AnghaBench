; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-st.c_st_dwc3_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_dwc3 = type { i32 }

@CLKRST_CTRL = common dso_local global i32 0, align 4
@AUX_CLK_EN = common dso_local global i32 0, align 4
@EXT_CFG_RESET_N = common dso_local global i32 0, align 4
@XHCI_REVISION = common dso_local global i32 0, align 4
@SW_PIPEW_RESET_N = common dso_local global i32 0, align 4
@USB2_VBUS_MNGMNT_SEL1 = common dso_local global i32 0, align 4
@USB2_VBUS_UTMIOTG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_dwc3*)* @st_dwc3_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st_dwc3_init(%struct.st_dwc3* %0) #0 {
  %2 = alloca %struct.st_dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.st_dwc3* %0, %struct.st_dwc3** %2, align 8
  %4 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %5 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CLKRST_CTRL, align 4
  %8 = call i32 @st_dwc3_readl(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @AUX_CLK_EN, align 4
  %10 = load i32, i32* @EXT_CFG_RESET_N, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @XHCI_REVISION, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @SW_PIPEW_RESET_N, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %21 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CLKRST_CTRL, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @st_dwc3_writel(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %27 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @USB2_VBUS_MNGMNT_SEL1, align 4
  %30 = call i32 @st_dwc3_readl(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @USB2_VBUS_UTMIOTG, align 4
  %32 = call i32 @SEL_OVERRIDE_VBUSVALID(i32 %31)
  %33 = load i32, i32* @USB2_VBUS_UTMIOTG, align 4
  %34 = call i32 @SEL_OVERRIDE_POWERPRESENT(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @USB2_VBUS_UTMIOTG, align 4
  %37 = call i32 @SEL_OVERRIDE_BVALID(i32 %36)
  %38 = or i32 %35, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %42 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @USB2_VBUS_MNGMNT_SEL1, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @st_dwc3_writel(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %48 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CLKRST_CTRL, align 4
  %51 = call i32 @st_dwc3_readl(i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* @SW_PIPEW_RESET_N, align 4
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.st_dwc3*, %struct.st_dwc3** %2, align 8
  %56 = getelementptr inbounds %struct.st_dwc3, %struct.st_dwc3* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CLKRST_CTRL, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @st_dwc3_writel(i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @st_dwc3_readl(i32, i32) #1

declare dso_local i32 @st_dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @SEL_OVERRIDE_VBUSVALID(i32) #1

declare dso_local i32 @SEL_OVERRIDE_POWERPRESENT(i32) #1

declare dso_local i32 @SEL_OVERRIDE_BVALID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
