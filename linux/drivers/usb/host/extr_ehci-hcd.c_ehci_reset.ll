; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehci_hcd = type { i64, i64, i64, i32*, %struct.TYPE_2__*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CMD_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@EHCI_RH_HALTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@USBMODE_EX_HC = common dso_local global i32 0, align 4
@USBMODE_EX_VBPS = common dso_local global i32 0, align 4
@TXFIFO_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehci_reset(%struct.ehci_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ehci_hcd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ehci_hcd* %0, %struct.ehci_hcd** %3, align 8
  %6 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %7 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = call i32 @ehci_readl(%struct.ehci_hcd* %6, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %18 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %17)
  %19 = call i32 @dbgp_reset_prep(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %16, %1
  %25 = load i32, i32* @CMD_RESET, align 4
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dbg_cmd(%struct.ehci_hcd* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @ehci_writel(%struct.ehci_hcd* %31, i32 %32, i32* %36)
  %38 = load i32, i32* @EHCI_RH_HALTED, align 4
  %39 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %40 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %43 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %45 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %46 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %45, i32 0, i32 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* @CMD_RESET, align 4
  %50 = call i32 @ehci_handshake(%struct.ehci_hcd* %44, i32* %48, i32 %49, i32 0, i32 250000)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %52 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %24
  %56 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %57 = load i32, i32* @USBMODE_EX_HC, align 4
  %58 = load i32, i32* @USBMODE_EX_VBPS, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %61 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @ehci_writel(%struct.ehci_hcd* %56, i32 %59, i32* %63)
  %65 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %66 = load i32, i32* @TXFIFO_DEFAULT, align 4
  %67 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %68 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @ehci_writel(%struct.ehci_hcd* %65, i32 %66, i32* %70)
  br label %72

72:                                               ; preds = %55, %24
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %101

77:                                               ; preds = %72
  %78 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %79 = call i64 @ehci_is_TDI(%struct.ehci_hcd* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %83 = call i32 @tdi_reset(%struct.ehci_hcd* %82)
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %86 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %91 = call i32 @ehci_to_hcd(%struct.ehci_hcd* %90)
  %92 = call i32 @dbgp_external_startup(i32 %91)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %95 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %97 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.ehci_hcd*, %struct.ehci_hcd** %3, align 8
  %99 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %75
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @ehci_readl(%struct.ehci_hcd*, i32*) #1

declare dso_local i32 @dbgp_reset_prep(i32) #1

declare dso_local i32 @ehci_to_hcd(%struct.ehci_hcd*) #1

declare dso_local i32 @dbg_cmd(%struct.ehci_hcd*, i8*, i32) #1

declare dso_local i32 @ehci_writel(%struct.ehci_hcd*, i32, i32*) #1

declare dso_local i32 @ehci_handshake(%struct.ehci_hcd*, i32*, i32, i32, i32) #1

declare dso_local i64 @ehci_is_TDI(%struct.ehci_hcd*) #1

declare dso_local i32 @tdi_reset(%struct.ehci_hcd*) #1

declare dso_local i32 @dbgp_external_startup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
