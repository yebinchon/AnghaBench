; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_nyet_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_nyet_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.dwc2_host_chan = type { i64, %struct.dwc2_qh*, i64, i64, i64 }
%struct.dwc2_qh = type { i32, i32, i32, i64, i32, i64 }
%struct.dwc2_qtd = type { i64, %struct.TYPE_4__*, i64, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [46 x i8] c"--Host Channel %d Interrupt: NYET Received--\0A\00", align 1
@USB_ENDPOINT_XFER_ISOC = common dso_local global i64 0, align 8
@DWC2_HC_XFER_URB_COMPLETE = common dso_local global i32 0, align 4
@DWC2_HC_XFER_NO_HALT_STATUS = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@DWC2_HC_XFER_XACT_ERR = common dso_local global i32 0, align 4
@DWC2_HC_XFER_NYET = common dso_local global i32 0, align 4
@HCINTMSK_NYET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_hc_nyet_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_nyet_intr(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_qh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %8, align 8
  %13 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %14 = call i64 @dbg_hc(%struct.dwc2_host_chan* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dev_vdbg(i32 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %16, %4
  %23 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %24 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %165

27:                                               ; preds = %22
  %28 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %29 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %165

32:                                               ; preds = %27
  %33 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %34 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %32
  %38 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %39 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %37
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %43
  %50 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %51 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %53 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %55 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %59 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %49
  %63 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %64 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %67 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %65, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %62
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %74 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %75 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %73, %struct.dwc2_qtd* %74, i32 0)
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %77 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %78 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %79 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  %80 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %76, %struct.dwc2_host_chan* %77, %struct.dwc2_qtd* %78, i32 %79)
  br label %87

81:                                               ; preds = %62, %49
  %82 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %83 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %84 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %85 = load i32, i32* @DWC2_HC_XFER_NO_HALT_STATUS, align 4
  %86 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %82, %struct.dwc2_host_chan* %83, %struct.dwc2_qtd* %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %72
  br label %191

88:                                               ; preds = %43, %37, %32
  %89 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %90 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %96 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %159

100:                                              ; preds = %94, %88
  %101 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %102 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %101, i32 0, i32 1
  %103 = load %struct.dwc2_qh*, %struct.dwc2_qh** %102, align 8
  store %struct.dwc2_qh* %103, %struct.dwc2_qh** %9, align 8
  %104 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %105 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %100
  %110 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %111 = call i32 @dwc2_hcd_get_frame_number(%struct.dwc2_hsotg* %110)
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @dwc2_full_frame_num(i32 %112)
  %114 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %115 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @dwc2_full_frame_num(i32 %116)
  %118 = icmp ne i64 %113, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %10, align 4
  br label %147

120:                                              ; preds = %100
  %121 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %122 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %125 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dwc2_frame_num_inc(i32 %123, i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %129 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @USB_ENDPOINT_XFER_ISOC, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %138, label %133

133:                                              ; preds = %120
  %134 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %135 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133, %120
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @dwc2_frame_num_inc(i32 %139, i32 1)
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %144 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dwc2_frame_num_le(i32 %142, i32 %145)
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %141, %109
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %152 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %151, i32 0, i32 3
  store i64 0, i64* %152, align 8
  %153 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %154 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %155 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %156 = load i32, i32* @DWC2_HC_XFER_XACT_ERR, align 4
  %157 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %153, %struct.dwc2_host_chan* %154, %struct.dwc2_qtd* %155, i32 %156)
  br label %191

158:                                              ; preds = %147
  br label %159

159:                                              ; preds = %158, %94
  %160 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %161 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %162 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %163 = load i32, i32* @DWC2_HC_XFER_NYET, align 4
  %164 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %160, %struct.dwc2_host_chan* %161, %struct.dwc2_qtd* %162, i32 %163)
  br label %191

165:                                              ; preds = %27, %22
  %166 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %167 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %166, i32 0, i32 1
  %168 = load %struct.dwc2_qh*, %struct.dwc2_qh** %167, align 8
  %169 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %168, i32 0, i32 4
  store i32 1, i32* %169, align 8
  %170 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %171 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %170, i32 0, i32 2
  store i64 0, i64* %171, align 8
  %172 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %173 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %174 = load i32, i32* %7, align 4
  %175 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %176 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %179 = load i32, i32* @DWC2_HC_XFER_NYET, align 4
  %180 = call i32 @dwc2_update_urb_state_abn(%struct.dwc2_hsotg* %172, %struct.dwc2_host_chan* %173, i32 %174, %struct.TYPE_4__* %177, %struct.dwc2_qtd* %178, i32 %179)
  %181 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %182 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %185 = call i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg* %181, %struct.dwc2_host_chan* %182, i32 %183, %struct.dwc2_qtd* %184)
  %186 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %187 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %188 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %189 = load i32, i32* @DWC2_HC_XFER_NYET, align 4
  %190 = call i32 @dwc2_halt_channel(%struct.dwc2_hsotg* %186, %struct.dwc2_host_chan* %187, %struct.dwc2_qtd* %188, i32 %189)
  br label %191

191:                                              ; preds = %165, %159, %150, %87
  %192 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @HCINTMSK_NYET, align 4
  %195 = call i32 @disable_hc_int(%struct.dwc2_hsotg* %192, i32 %193, i32 %194)
  ret void
}

declare dso_local i64 @dbg_hc(%struct.dwc2_host_chan*) #1

declare dso_local i32 @dev_vdbg(i32, i8*, i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_release_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_hcd_get_frame_number(%struct.dwc2_hsotg*) #1

declare dso_local i64 @dwc2_full_frame_num(i32) #1

declare dso_local i32 @dwc2_frame_num_inc(i32, i32) #1

declare dso_local i32 @dwc2_frame_num_le(i32, i32) #1

declare dso_local i32 @dwc2_halt_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_update_urb_state_abn(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.TYPE_4__*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_hcd_save_data_toggle(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*) #1

declare dso_local i32 @disable_hc_int(%struct.dwc2_hsotg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
