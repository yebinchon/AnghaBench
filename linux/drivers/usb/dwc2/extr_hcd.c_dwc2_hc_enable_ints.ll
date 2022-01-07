; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dwc2_host_chan = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"DMA enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"DMA disabled\0A\00", align 1
@HAINTMSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"set HAINTMSK to %08x\0A\00", align 1
@GINTMSK = common dso_local global i32 0, align 4
@GINTSTS_HCHINT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"set GINTMSK to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*)* @dwc2_hc_enable_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_enable_ints(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_host_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %4, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %13 = call i64 @dbg_hc(%struct.dwc2_host_chan* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %23 = call i32 @dwc2_hc_enable_dma_ints(%struct.dwc2_hsotg* %21, %struct.dwc2_host_chan* %22)
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %26 = call i64 @dbg_hc(%struct.dwc2_host_chan* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %30 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %35 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %36 = call i32 @dwc2_hc_enable_slave_ints(%struct.dwc2_hsotg* %34, %struct.dwc2_host_chan* %35)
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = load i32, i32* @HAINTMSK, align 4
  %40 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %42 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 1, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @HAINTMSK, align 4
  %50 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %47, i32 %48, i32 %49)
  %51 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %52 = call i64 @dbg_hc(%struct.dwc2_host_chan* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %37
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %56 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %54, %37
  %61 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %62 = load i32, i32* @GINTMSK, align 4
  %63 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @GINTSTS_HCHINT, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @GINTMSK, align 4
  %70 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %67, i32 %68, i32 %69)
  %71 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %72 = call i64 @dbg_hc(%struct.dwc2_host_chan* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %60
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_hc_enable_dma_ints(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @dwc2_hc_enable_slave_ints(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
