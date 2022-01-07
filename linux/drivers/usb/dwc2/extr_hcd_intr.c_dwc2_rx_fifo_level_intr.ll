; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_rx_fifo_level_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_rx_fifo_level_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.dwc2_host_chan** }
%struct.dwc2_host_chan = type { i64, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"--RxFIFO Level Interrupt--\0A\00", align 1
@GRXSTSP = common dso_local global i32 0, align 4
@GRXSTS_HCHNUM_MASK = common dso_local global i64 0, align 8
@GRXSTS_HCHNUM_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to get corresponding channel\0A\00", align 1
@GRXSTS_BYTECNT_MASK = common dso_local global i64 0, align 8
@GRXSTS_BYTECNT_SHIFT = common dso_local global i64 0, align 8
@GRXSTS_DPID_MASK = common dso_local global i64 0, align 8
@GRXSTS_DPID_SHIFT = common dso_local global i64 0, align 8
@GRXSTS_PKTSTS_MASK = common dso_local global i64 0, align 8
@GRXSTS_PKTSTS_SHIFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"    Ch num = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"    Count = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"    DPID = %d, chan.dpid = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"    PStatus = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"RxFIFO Level Interrupt: Unknown status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_rx_fifo_level_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_rx_fifo_level_intr(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dwc2_host_chan*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %9 = call i64 (...) @dbg_perio()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %13 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %18 = load i32, i32* @GRXSTSP, align 4
  %19 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %17, i32 %18)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @GRXSTS_HCHNUM_MASK, align 8
  %22 = and i64 %20, %21
  %23 = load i64, i64* @GRXSTS_HCHNUM_SHIFT, align 8
  %24 = lshr i64 %22, %23
  store i64 %24, i64* %4, align 8
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 1
  %27 = load %struct.dwc2_host_chan**, %struct.dwc2_host_chan*** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %27, i64 %28
  %30 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %29, align 8
  store %struct.dwc2_host_chan* %30, %struct.dwc2_host_chan** %8, align 8
  %31 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %32 = icmp ne %struct.dwc2_host_chan* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %16
  %34 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %35 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %110

38:                                               ; preds = %16
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @GRXSTS_BYTECNT_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @GRXSTS_BYTECNT_SHIFT, align 8
  %43 = lshr i64 %41, %42
  store i64 %43, i64* %5, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* @GRXSTS_DPID_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @GRXSTS_DPID_SHIFT, align 8
  %48 = lshr i64 %46, %47
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @GRXSTS_PKTSTS_MASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* @GRXSTS_PKTSTS_SHIFT, align 8
  %53 = lshr i64 %51, %52
  store i64 %53, i64* %7, align 8
  %54 = call i64 (...) @dbg_perio()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %38
  %57 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %58 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  %62 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %63 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %68 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %72 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %70, i32 %73)
  %75 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %76 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %77, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %56, %38
  %81 = load i64, i64* %7, align 8
  switch i64 %81, label %104 [
    i64 129, label %82
    i64 128, label %103
    i64 131, label %103
    i64 130, label %103
  ]

82:                                               ; preds = %80
  %83 = load i64, i64* %5, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %87 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %88 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @dwc2_read_packet(%struct.dwc2_hsotg* %86, i64 %89, i64 %90)
  %92 = load i64, i64* %5, align 8
  %93 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %94 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %99 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %100, %97
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %85, %82
  br label %110

103:                                              ; preds = %80, %80, %80
  br label %110

104:                                              ; preds = %80
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %106 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = call i32 (i32, i8*, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i64 %108)
  br label %110

110:                                              ; preds = %33, %104, %103, %102
  ret void
}

declare dso_local i64 @dbg_perio(...) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dwc2_read_packet(%struct.dwc2_hsotg*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
