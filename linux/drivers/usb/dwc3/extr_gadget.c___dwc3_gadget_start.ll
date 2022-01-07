; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dwc3 = type { %struct.dwc3_ep**, i32, i32, i32, i32, i64 }
%struct.dwc3_ep = type { i32 }

@DWC3_GEVNTCOUNT_EHB = common dso_local global i64 0, align 8
@DWC3_GRXTHRCFG = common dso_local global i32 0, align 4
@DWC31_GRXTHRCFG_PKTCNTSEL = common dso_local global i64 0, align 8
@DWC3_GRXTHRCFG_PKTCNTSEL = common dso_local global i64 0, align 8
@dwc3_gadget_ep0_desc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DWC3_DEPCFG_ACTION_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to enable %s\0A\00", align 1
@EP0_SETUP_PHASE = common dso_local global i32 0, align 4
@DWC3_LINK_STATE_SS_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @__dwc3_gadget_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_start(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %13 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DWC3_DEV_IMOD(i32 0)
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @dwc3_writel(i32 %14, i32 %15, i64 %18)
  %20 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %21 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DWC3_GEVNTCOUNT(i32 0)
  %24 = load i64, i64* @DWC3_GEVNTCOUNT_EHB, align 8
  %25 = call i32 @dwc3_writel(i32 %22, i32 %23, i64 %24)
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %28 = call i64 @dwc3_has_imod(%struct.dwc3* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DWC3_DEV_IMOD(i32 0)
  %35 = call i32 @dwc3_writel(i32 %33, i32 %34, i64 0)
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %39 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DWC3_GRXTHRCFG, align 4
  %42 = call i64 @dwc3_readl(i32 %40, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %44 = call i64 @dwc3_is_usb31(%struct.dwc3* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i64, i64* @DWC31_GRXTHRCFG_PKTCNTSEL, align 8
  %48 = xor i64 %47, -1
  %49 = load i64, i64* %6, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %56

51:                                               ; preds = %37
  %52 = load i64, i64* @DWC3_GRXTHRCFG_PKTCNTSEL, align 8
  %53 = xor i64 %52, -1
  %54 = load i64, i64* %6, align 8
  %55 = and i64 %54, %53
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %58 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DWC3_GRXTHRCFG, align 4
  %61 = load i64, i64* %6, align 8
  %62 = call i32 @dwc3_writel(i32 %59, i32 %60, i64 %61)
  %63 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %64 = call i32 @dwc3_gadget_setup_nump(%struct.dwc3* %63)
  %65 = call i32 @cpu_to_le16(i32 512)
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dwc3_gadget_ep0_desc, i32 0, i32 0), align 4
  %66 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %67 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %66, i32 0, i32 0
  %68 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %67, align 8
  %69 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %68, i64 0
  %70 = load %struct.dwc3_ep*, %struct.dwc3_ep** %69, align 8
  store %struct.dwc3_ep* %70, %struct.dwc3_ep** %4, align 8
  %71 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %72 = load i32, i32* @DWC3_DEPCFG_ACTION_INIT, align 4
  %73 = call i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %56
  %77 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %78 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %81 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %121

84:                                               ; preds = %56
  %85 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %86 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %85, i32 0, i32 0
  %87 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %86, align 8
  %88 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %87, i64 1
  %89 = load %struct.dwc3_ep*, %struct.dwc3_ep** %88, align 8
  store %struct.dwc3_ep* %89, %struct.dwc3_ep** %4, align 8
  %90 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %91 = load i32, i32* @DWC3_DEPCFG_ACTION_INIT, align 4
  %92 = call i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %84
  %96 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %97 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %100 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %114

103:                                              ; preds = %84
  %104 = load i32, i32* @EP0_SETUP_PHASE, align 4
  %105 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %106 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @DWC3_LINK_STATE_SS_DIS, align 4
  %108 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %109 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %111 = call i32 @dwc3_ep0_out_start(%struct.dwc3* %110)
  %112 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %113 = call i32 @dwc3_gadget_enable_irq(%struct.dwc3* %112)
  store i32 0, i32* %2, align 4
  br label %123

114:                                              ; preds = %95
  %115 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %115, i32 0, i32 0
  %117 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %116, align 8
  %118 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %117, i64 0
  %119 = load %struct.dwc3_ep*, %struct.dwc3_ep** %118, align 8
  %120 = call i32 @__dwc3_gadget_ep_disable(%struct.dwc3_ep* %119)
  br label %121

121:                                              ; preds = %114, %76
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %103
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @dwc3_writel(i32, i32, i64) #1

declare dso_local i32 @DWC3_DEV_IMOD(i32) #1

declare dso_local i32 @DWC3_GEVNTCOUNT(i32) #1

declare dso_local i64 @dwc3_has_imod(%struct.dwc3*) #1

declare dso_local i64 @dwc3_readl(i32, i32) #1

declare dso_local i64 @dwc3_is_usb31(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_setup_nump(%struct.dwc3*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc3_ep0_out_start(%struct.dwc3*) #1

declare dso_local i32 @dwc3_gadget_enable_irq(%struct.dwc3*) #1

declare dso_local i32 @__dwc3_gadget_ep_disable(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
