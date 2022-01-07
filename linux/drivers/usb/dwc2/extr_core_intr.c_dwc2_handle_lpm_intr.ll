; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_lpm_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_handle_lpm_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i32 }

@GINTSTS_LPMTRANRCVD = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@GLPMCFG = common dso_local global i32 0, align 4
@GLPMCFG_LPMCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unexpected LPM interrupt\0A\00", align 1
@GLPMCFG_HIRD_MASK = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_SHIFT = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_MASK = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_EN = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_SHIFT = common dso_local global i32 0, align 4
@GLPMCFG_ENBLSLPM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"HIRD_THRES_EN = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"L1 with utmi_l1_suspend_n\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"L1 with utmi_sleep_n\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Entering Sleep with L1 Gating\0A\00", align 1
@PCGCTL = common dso_local global i32 0, align 4
@PCGCTL_ENBL_SLEEP_GATING = common dso_local global i32 0, align 4
@GLPMCFG_SLPSTS = common dso_local global i32 0, align 4
@DWC2_L1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Core is in L1 sleep glpmcfg=%08x\0A\00", align 1
@suspend = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_handle_lpm_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_handle_lpm_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %10 = load i32, i32* @GINTSTS_LPMTRANRCVD, align 4
  %11 = load i32, i32* @GINTSTS, align 4
  %12 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %9, i32 %10, i32 %11)
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %14 = load i32, i32* @GLPMCFG, align 4
  %15 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GLPMCFG_LPMCAP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %111

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GLPMCFG_HIRD_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @GLPMCFG_HIRD_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @GLPMCFG_HIRD_THRES_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @GLPMCFG_HIRD_THRES_EN, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @GLPMCFG_HIRD_THRES_SHIFT, align 4
  %38 = ashr i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @GLPMCFG_HIRD_THRES_EN, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @GLPMCFG_ENBLSLPM, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %46 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %25
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %62 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_dbg(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %89

65:                                               ; preds = %56, %48
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %88

73:                                               ; preds = %65
  %74 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %75 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %79 = load i32, i32* @PCGCTL, align 4
  %80 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %78, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @PCGCTL_ENBL_SLEEP_GATING, align 4
  %82 = load i32, i32* %4, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @PCGCTL, align 4
  %87 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %73, %68
  br label %89

89:                                               ; preds = %88, %60
  %90 = call i32 @udelay(i32 10)
  %91 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %92 = load i32, i32* @GLPMCFG, align 4
  %93 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @GLPMCFG_SLPSTS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %89
  %99 = load i32, i32* @DWC2_L1, align 4
  %100 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %101 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %103 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %3, align 4
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %108 = load i32, i32* @suspend, align 4
  %109 = call i32 @call_gadget(%struct.dwc2_hsotg* %107, i32 %108)
  br label %110

110:                                              ; preds = %98, %89
  br label %111

111:                                              ; preds = %20, %110, %25
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @call_gadget(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
