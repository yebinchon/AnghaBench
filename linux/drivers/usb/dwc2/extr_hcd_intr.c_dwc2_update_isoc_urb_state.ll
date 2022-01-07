; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_update_isoc_urb_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_update_isoc_urb_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dwc2_host_chan = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.dwc2_qtd = type { i64, i32, i32, %struct.dwc2_hcd_urb* }
%struct.dwc2_hcd_urb = type { i64, i32, %struct.dwc2_hcd_iso_packet_desc* }
%struct.dwc2_hcd_iso_packet_desc = type { i8*, i32 }

@DWC2_HC_XFER_NO_HALT_STATUS = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_ISOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unhandled halt_status (%d)\0A\00", align 1
@DWC2_HC_XFER_URB_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32)* @dwc2_update_isoc_urb_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_update_isoc_urb_state(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc2_hsotg*, align 8
  %8 = alloca %struct.dwc2_host_chan*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dwc2_qtd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  %13 = alloca %struct.dwc2_hcd_urb*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %7, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %15 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %14, i32 0, i32 3
  %16 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %15, align 8
  store %struct.dwc2_hcd_urb* %16, %struct.dwc2_hcd_urb** %13, align 8
  %17 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %18 = icmp ne %struct.dwc2_hcd_urb* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @DWC2_HC_XFER_NO_HALT_STATUS, align 4
  store i32 %20, i32* %6, align 4
  br label %141

21:                                               ; preds = %5
  %22 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %23 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %22, i32 0, i32 2
  %24 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %23, align 8
  %25 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %26 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %24, i64 %27
  store %struct.dwc2_hcd_iso_packet_desc* %28, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %118 [
    i32 130, label %30
    i32 129, label %41
    i32 131, label %63
    i32 128, label %72
  ]

30:                                               ; preds = %21
  %31 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %32 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %31, i32 0, i32 1
  store i32 0, i32* %32, align 8
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %34 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i8* @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg* %33, %struct.dwc2_host_chan* %34, i32 %35, %struct.dwc2_qtd* %36, i32 %37, i32* null)
  %39 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %40 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %124

41:                                               ; preds = %21
  %42 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %43 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %47 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load i32, i32* @ENOSR, align 4
  %52 = sub nsw i32 0, %51
  %53 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %54 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  br label %60

55:                                               ; preds = %41
  %56 = load i32, i32* @ECOMM, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %59 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %62 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %61, i32 0, i32 0
  store i8* null, i8** %62, align 8
  br label %124

63:                                               ; preds = %21
  %64 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %65 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @EOVERFLOW, align 4
  %69 = sub nsw i32 0, %68
  %70 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %71 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  br label %124

72:                                               ; preds = %21
  %73 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %74 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* @EPROTO, align 4
  %78 = sub nsw i32 0, %77
  %79 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %80 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %82 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i8* @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg* %81, %struct.dwc2_host_chan* %82, i32 %83, %struct.dwc2_qtd* %84, i32 %85, i32* null)
  %87 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %88 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %90 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %72
  %96 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %97 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @USB_ENDPOINT_XFER_ISOC, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %103 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %114 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %113, i32 0, i32 2
  store i32 0, i32* %114, align 4
  %115 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %116 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %115, i32 0, i32 1
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %106, %101, %95, %72
  br label %124

118:                                              ; preds = %21
  %119 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %120 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %118, %117, %63, %60, %30
  %125 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %126 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %126, align 8
  %129 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %13, align 8
  %130 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %124
  %134 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %135 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %10, align 8
  %136 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %134, %struct.dwc2_qtd* %135, i32 0)
  %137 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  store i32 %137, i32* %11, align 4
  br label %139

138:                                              ; preds = %124
  store i32 130, i32* %11, align 4
  br label %139

139:                                              ; preds = %138, %133
  %140 = load i32, i32* %11, align 4
  store i32 %140, i32* %6, align 4
  br label %141

141:                                              ; preds = %139, %19
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i8* @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
