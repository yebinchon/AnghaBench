; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_set_even_odd_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_set_even_odd_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dwc2_host_chan = type { i64, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@HPTXSTS = common dso_local global i32 0, align 4
@TXSTS_FSPCAVAIL_MASK = common dso_local global i32 0, align 4
@TXSTS_FSPCAVAIL_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"QH=%p EO MISS fr=%04x=>%04x (%+d)\0A\00", align 1
@HCCHAR_ODDFRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32*)* @dwc2_hc_set_even_odd_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_set_even_odd_frame(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32* %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %117

25:                                               ; preds = %19, %3
  %26 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %27 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USB_SPEED_HIGH, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %33 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %38 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  br label %42

40:                                               ; preds = %31, %25
  %41 = load i32, i32* @USB_SPEED_HIGH, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32 [ %39, %36 ], [ %41, %40 ]
  store i32 %43, i32* %7, align 4
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %45 = load i32, i32* @HPTXSTS, align 4
  %46 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %44, i32 %45)
  %47 = load i32, i32* @TXSTS_FSPCAVAIL_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @TXSTS_FSPCAVAIL_SHIFT, align 4
  %50 = ashr i32 %48, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %52 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %62 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i32 @usb_calc_bus_time(i32 %60, i32 0, i32 0, i64 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @NS_TO_US(i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dwc2_hcd_get_future_frame_number(%struct.dwc2_hsotg* %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %74 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dwc2_frame_num_inc(i32 %77, i32 1)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i64 @dwc2_frame_num_gt(i32 %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %101

83:                                               ; preds = %42
  %84 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %85 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %86 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @dwc2_frame_num_dec(i32 %90, i32 %91)
  %93 = call i32 @dwc2_sch_vdbg(%struct.dwc2_hsotg* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %87, i32 %88, i32 %89, i32 %92)
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @dwc2_frame_num_dec(i32 %95, i32 1)
  %97 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %98 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i32 %96, i32* %100, align 4
  br label %101

101:                                              ; preds = %83, %42
  %102 = load i32, i32* %13, align 4
  %103 = and i32 %102, 1
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  br label %116

110:                                              ; preds = %101
  %111 = load i32, i32* @HCCHAR_ODDFRM, align 4
  %112 = xor i32 %111, -1
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %105
  br label %117

117:                                              ; preds = %116, %19
  ret void
}

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @usb_calc_bus_time(i32, i32, i32, i64) #1

declare dso_local i32 @NS_TO_US(i32) #1

declare dso_local i32 @dwc2_hcd_get_future_frame_number(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @dwc2_frame_num_inc(i32, i32) #1

declare dso_local i64 @dwc2_frame_num_gt(i32, i32) #1

declare dso_local i32 @dwc2_sch_vdbg(%struct.dwc2_hsotg*, i8*, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @dwc2_frame_num_dec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
