; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_wakeup_from_lpm_l1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core_intr.c_dwc2_wakeup_from_lpm_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32 }

@DWC2_L1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Core isn't in DWC2_L1 state\0A\00", align 1
@GLPMCFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Exit from L1 state\0A\00", align 1
@GLPMCFG_ENBLSLPM = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_EN = common dso_local global i32 0, align 4
@GLPMCFG_COREL1RES_MASK = common dso_local global i32 0, align 4
@GLPMCFG_L1RESUMEOK = common dso_local global i32 0, align 4
@GLPMCFG_SLPSTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to exit L1 sleep state in 200us.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Host side LPM is not supported.\0A\00", align 1
@DWC2_L0 = common dso_local global i64 0, align 8
@resume = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_wakeup_from_lpm_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_wakeup_from_lpm_l1(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DWC2_L1, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = load i32, i32* @GLPMCFG, align 4
  %18 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %20 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @GLPMCFG_ENBLSLPM, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @GLPMCFG_HIRD_THRES_EN, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GLPMCFG, align 4
  %38 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %54, %22
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = load i32, i32* @GLPMCFG, align 4
  %42 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @GLPMCFG_COREL1RES_MASK, align 4
  %45 = load i32, i32* @GLPMCFG_L1RESUMEOK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @GLPMCFG_SLPSTS, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %58

52:                                               ; preds = %39
  %53 = call i32 @udelay(i32 1)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = icmp slt i32 %56, 200
  br i1 %57, label %39, label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp eq i32 %59, 200
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %63 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %81

66:                                               ; preds = %58
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %68 = call i32 @dwc2_gadget_init_lpm(%struct.dwc2_hsotg* %67)
  br label %74

69:                                               ; preds = %15
  %70 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %71 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %81

74:                                               ; preds = %66
  %75 = load i64, i64* @DWC2_L0, align 8
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %77 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %79 = load i32, i32* @resume, align 4
  %80 = call i32 @call_gadget(%struct.dwc2_hsotg* %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %69, %61, %10
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dwc2_gadget_init_lpm(%struct.dwc2_hsotg*) #1

declare dso_local i32 @call_gadget(%struct.dwc2_hsotg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
