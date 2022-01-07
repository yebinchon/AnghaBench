; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_init_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_init_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32 }

@GLPMCFG_LPMCAP = common dso_local global i32 0, align 4
@GLPMCFG_APPL1RES = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_EN = common dso_local global i32 0, align 4
@GLPMCFG_ENBLSLPM = common dso_local global i32 0, align 4
@GLPMCFG_HIRD_THRES_SHIFT = common dso_local global i32 0, align 4
@GLPMCFG_ENBESL = common dso_local global i32 0, align 4
@GLPMCFG_LPM_REJECT_CTRL_CONTROL = common dso_local global i32 0, align 4
@GLPMCFG_LPM_ACCEPT_CTRL_ISOC = common dso_local global i32 0, align 4
@GLPMCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"GLPMCFG=0x%08x\0A\00", align 1
@GINTMSK2 = common dso_local global i32 0, align 4
@GINTMSK2_WKUP_ALERT_INT_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwc2_gadget_init_lpm(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %85

10:                                               ; preds = %1
  %11 = load i32, i32* @GLPMCFG_LPMCAP, align 4
  %12 = load i32, i32* @GLPMCFG_APPL1RES, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @GLPMCFG_HIRD_THRES_EN, align 4
  br label %22

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %27 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @GLPMCFG_ENBLSLPM, align 4
  br label %34

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GLPMCFG_HIRD_THRES_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %47 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @GLPMCFG_ENBESL, align 4
  br label %54

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @GLPMCFG_LPM_REJECT_CTRL_CONTROL, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @GLPMCFG_LPM_ACCEPT_CTRL_ISOC, align 4
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @GLPMCFG, align 4
  %67 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %64, i32 %65, i32 %66)
  %68 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %69 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %72 = load i32, i32* @GLPMCFG, align 4
  %73 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %71, i32 %72)
  %74 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %54
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %82 = load i32, i32* @GINTMSK2, align 4
  %83 = load i32, i32* @GINTMSK2_WKUP_ALERT_INT_MSK, align 4
  %84 = call i32 @dwc2_set_bit(%struct.dwc2_hsotg* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %9, %80, %54
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_set_bit(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
