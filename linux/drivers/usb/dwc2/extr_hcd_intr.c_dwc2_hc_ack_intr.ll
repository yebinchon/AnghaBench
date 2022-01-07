; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_ack_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_ack_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i64, i64, i32, %struct.TYPE_4__*, i64, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.dwc2_qtd = type { i32, i32, i32, i64, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.dwc2_hcd_iso_packet_desc* }
%struct.dwc2_hcd_iso_packet_desc = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"--Host Channel %d Interrupt: ACK Received--\0A\00", align 1
@DWC2_HC_PID_SETUP = common dso_local global i64 0, align 8
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@DWC2_HC_XFER_ACK = common dso_local global i32 0, align 4
@HCINTMSK_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_ack_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_ack_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %10 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %11 = call i64 @dbg_hc(%struct.dwc2_host_chan* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @dev_vdbg(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %4
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %101

24:                                               ; preds = %19
  %25 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %26 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %24
  %30 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %31 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DWC2_HC_PID_SETUP, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %37 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %40 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %35, %29, %24
  %42 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %43 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %49 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47, %41
  %53 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %54 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %56 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %57 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %58 = load i32, i32* @DWC2_HC_XFER_ACK, align 4
  %59 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %55, %struct.dwc2_host_chan* %56, %struct.dwc2_qtd* %57, i32 %58)
  br label %100

60:                                               ; preds = %47
  %61 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %62 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %99 [
    i32 131, label %64
    i32 129, label %65
    i32 130, label %70
    i32 128, label %70
  ]

64:                                               ; preds = %60
  br label %99

65:                                               ; preds = %60
  %66 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %67 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %66, i32 0, i32 1
  store i32 131, i32* %67, align 4
  %68 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %69 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  br label %99

70:                                               ; preds = %60, %60
  %71 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %72 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %71, i32 0, i32 5
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %74, align 8
  %76 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %77 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %75, i64 %78
  store %struct.dwc2_hcd_iso_packet_desc* %79, %struct.dwc2_hcd_iso_packet_desc** %9, align 8
  %80 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %81 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 188
  store i32 %83, i32* %81, align 8
  %84 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %9, align 8
  %85 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %88 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  %91 = icmp sle i32 %90, 188
  br i1 %91, label %92, label %95

92:                                               ; preds = %70
  %93 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %94 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %93, i32 0, i32 1
  store i32 129, i32* %94, align 4
  br label %98

95:                                               ; preds = %70
  %96 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %97 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %96, i32 0, i32 1
  store i32 128, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %60, %98, %65, %64
  br label %100

100:                                              ; preds = %99, %52
  br label %121

101:                                              ; preds = %19
  %102 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %103 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %102, i32 0, i32 4
  store i64 0, i64* %103, align 8
  %104 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %105 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %101
  %111 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %112 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %111, i32 0, i32 3
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i64 0, i64* %114, align 8
  %115 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %116 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %117 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %118 = load i32, i32* @DWC2_HC_XFER_ACK, align 4
  %119 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %115, %struct.dwc2_host_chan* %116, %struct.dwc2_qtd* %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %101
  br label %121

121:                                              ; preds = %120, %100
  %122 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @HCINTMSK_ACK, align 4
  %125 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %122, i32 %123, i32 %124)
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
