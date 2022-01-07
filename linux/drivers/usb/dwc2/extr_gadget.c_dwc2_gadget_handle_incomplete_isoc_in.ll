; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_incomplete_isoc_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_gadget.c_dwc2_gadget_handle_incomplete_isoc_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, %struct.dwc2_hsotg_ep**, i32 }
%struct.dwc2_hsotg_ep = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Incomplete isoc in interrupt received:\0A\00", align 1
@DAINTMSK = common dso_local global i32 0, align 4
@DXEPCTL_EPENA = common dso_local global i64 0, align 8
@DXEPCTL_SNAK = common dso_local global i64 0, align 8
@DXEPCTL_EPDIS = common dso_local global i64 0, align 8
@GINTSTS_INCOMPL_SOIN = common dso_local global i64 0, align 8
@GINTSTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_gadget_handle_incomplete_isoc_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_gadget_handle_incomplete_isoc_in(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca %struct.dwc2_hsotg_ep*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %12 = load i32, i32* @DAINTMSK, align 4
  %13 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %11, i32 %12)
  store i64 %13, i64* %5, align 8
  store i64 1, i64* %6, align 8
  br label %14

14:                                               ; preds = %65, %1
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 1
  %23 = load %struct.dwc2_hsotg_ep**, %struct.dwc2_hsotg_ep*** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %23, i64 %24
  %26 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %25, align 8
  store %struct.dwc2_hsotg_ep* %26, %struct.dwc2_hsotg_ep** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @BIT(i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %20
  %34 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg_ep, %struct.dwc2_hsotg_ep* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33, %20
  br label %65

39:                                               ; preds = %33
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @DIEPCTL(i64 %41)
  %43 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %40, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @DXEPCTL_EPENA, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.dwc2_hsotg_ep*, %struct.dwc2_hsotg_ep** %3, align 8
  %50 = call i64 @dwc2_gadget_target_frame_elapsed(%struct.dwc2_hsotg_ep* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i64, i64* @DXEPCTL_SNAK, align 8
  %54 = load i64, i64* %4, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* @DXEPCTL_EPDIS, align 8
  %57 = load i64, i64* %4, align 8
  %58 = or i64 %57, %56
  store i64 %58, i64* %4, align 8
  %59 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @DIEPCTL(i64 %61)
  %63 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %59, i64 %60, i32 %62)
  br label %64

64:                                               ; preds = %52, %48, %39
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %6, align 8
  br label %14

68:                                               ; preds = %14
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %70 = load i64, i64* @GINTSTS_INCOMPL_SOIN, align 8
  %71 = load i32, i32* @GINTSTS, align 4
  %72 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %69, i64 %70, i32 %71)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @DIEPCTL(i64) #1

declare dso_local i64 @dwc2_gadget_target_frame_elapsed(%struct.dwc2_hsotg_ep*) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
