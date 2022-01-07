; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_dma_ints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_enable_dma_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dwc2_host_chan = type { i64, i32, i64, i32, i64 }

@HCINTMSK_CHHLTD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"desc DMA disabled\0A\00", align 1
@HCINTMSK_AHBERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"desc DMA enabled\0A\00", align 1
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@HCINTMSK_XFERCOMPL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"setting ACK\0A\00", align 1
@HCINTMSK_ACK = common dso_local global i32 0, align 4
@HCINTMSK_DATATGLERR = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@HCINTMSK_NAK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"set HCINTMSK to %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*)* @dwc2_hc_enable_dma_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_enable_dma_ints(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1) #0 {
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.dwc2_host_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %4, align 8
  %6 = load i32, i32* @HCINTMSK_CHHLTD, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %8 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %14 = call i64 @dbg_hc(%struct.dwc2_host_chan* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %12
  %22 = load i32, i32* @HCINTMSK_AHBERR, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %27 = call i64 @dbg_hc(%struct.dwc2_host_chan* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %31 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %36 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @HCINTMSK_XFERCOMPL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %34
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %47 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %45
  %51 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %52 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %93, label %55

55:                                               ; preds = %50
  %56 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %57 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %63 = call i64 @dbg_hc(%struct.dwc2_host_chan* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %68, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* @HCINTMSK_ACK, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %75 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load i32, i32* @HCINTMSK_DATATGLERR, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %83 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @HCINTMSK_NAK, align 4
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %55, %50, %45
  %94 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %97 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @HCINTMSK(i32 %98)
  %100 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %94, i32 %95, i32 %99)
  %101 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %4, align 8
  %102 = call i64 @dbg_hc(%struct.dwc2_host_chan* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %93
  %105 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %106 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = call i32 (i32, i8*, ...) @dev_vdbg(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %104, %93
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, ...) #1

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i32 @HCINTMSK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
