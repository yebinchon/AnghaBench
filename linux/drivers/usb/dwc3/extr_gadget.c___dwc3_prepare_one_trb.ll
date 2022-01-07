; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_prepare_one_trb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_prepare_one_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i64, %struct.usb_ep, %struct.dwc3* }
%struct.usb_ep = type { i32 }
%struct.dwc3 = type { i32, %struct.usb_gadget }
%struct.usb_gadget = type { i32 }
%struct.dwc3_trb = type { i32, i32, i32, i32 }

@DWC3_TRBCTL_CONTROL_SETUP = common dso_local global i32 0, align 4
@DWC3_TRBCTL_ISOCHRONOUS_FIRST = common dso_local global i32 0, align 4
@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@DWC3_TRBCTL_ISOCHRONOUS = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_ISP_IMI = common dso_local global i32 0, align 4
@DWC3_TRBCTL_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unknown endpoint type %d\0A\00", align 1
@DWC3_TRB_CTRL_CSP = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_IOC = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_CHN = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3_ep*, %struct.dwc3_trb*, i32, i32, i32, i32, i32, i32, i32)* @__dwc3_prepare_one_trb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dwc3_prepare_one_trb(%struct.dwc3_ep* %0, %struct.dwc3_trb* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.dwc3_ep*, align 8
  %11 = alloca %struct.dwc3_trb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dwc3*, align 8
  %20 = alloca %struct.usb_gadget*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.usb_ep*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %10, align 8
  store %struct.dwc3_trb* %1, %struct.dwc3_trb** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %26 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %25, i32 0, i32 2
  %27 = load %struct.dwc3*, %struct.dwc3** %26, align 8
  store %struct.dwc3* %27, %struct.dwc3** %19, align 8
  %28 = load %struct.dwc3*, %struct.dwc3** %19, align 8
  %29 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %28, i32 0, i32 1
  store %struct.usb_gadget* %29, %struct.usb_gadget** %20, align 8
  %30 = load %struct.usb_gadget*, %struct.usb_gadget** %20, align 8
  %31 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %21, align 4
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @DWC3_TRB_SIZE_LENGTH(i32 %33)
  %35 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %36 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %40 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @upper_32_bits(i32 %41)
  %43 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %44 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %46 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_endpoint_type(i32 %48)
  switch i32 %49, label %107 [
    i32 130, label %50
    i32 128, label %54
    i32 131, label %103
    i32 129, label %103
  ]

50:                                               ; preds = %9
  %51 = load i32, i32* @DWC3_TRBCTL_CONTROL_SETUP, align 4
  %52 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %53 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %117

54:                                               ; preds = %9
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %93, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @DWC3_TRBCTL_ISOCHRONOUS_FIRST, align 4
  %59 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %60 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %21, align 4
  %62 = load i32, i32* @USB_SPEED_HIGH, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %57
  %65 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %66 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %65, i32 0, i32 1
  store %struct.usb_ep* %66, %struct.usb_ep** %22, align 8
  store i32 2, i32* %23, align 4
  %67 = load %struct.usb_ep*, %struct.usb_ep** %22, align 8
  %68 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_endpoint_maxp(i32 %69)
  store i32 %70, i32* %24, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %24, align 4
  %73 = mul i32 2, %72
  %74 = icmp ule i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %64
  %76 = load i32, i32* %23, align 4
  %77 = add i32 %76, -1
  store i32 %77, i32* %23, align 4
  br label %78

78:                                               ; preds = %75, %64
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %24, align 4
  %81 = icmp ule i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %23, align 4
  %84 = add i32 %83, -1
  store i32 %84, i32* %23, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* %23, align 4
  %87 = call i32 @DWC3_TRB_SIZE_PCM1(i32 %86)
  %88 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %89 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %85, %57
  br label %97

93:                                               ; preds = %54
  %94 = load i32, i32* @DWC3_TRBCTL_ISOCHRONOUS, align 4
  %95 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %96 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %92
  %98 = load i32, i32* @DWC3_TRB_CTRL_ISP_IMI, align 4
  %99 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %100 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %117

103:                                              ; preds = %9, %9
  %104 = load i32, i32* @DWC3_TRBCTL_NORMAL, align 4
  %105 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %106 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %117

107:                                              ; preds = %9
  %108 = load %struct.dwc3*, %struct.dwc3** %19, align 8
  %109 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %112 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @usb_endpoint_type(i32 %114)
  %116 = call i32 @dev_WARN(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %107, %103, %97, %50
  %118 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %119 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @usb_endpoint_dir_out(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %145

124:                                              ; preds = %117
  %125 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %126 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @DWC3_TRB_CTRL_CSP, align 4
  %131 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %132 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i32, i32* @DWC3_TRB_CTRL_ISP_IMI, align 4
  %140 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %141 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %135
  br label %145

145:                                              ; preds = %144, %117
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148, %145
  %152 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %153 = call i32 @dwc3_calc_trbs_left(%struct.dwc3_ep* %152)
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %161

155:                                              ; preds = %151, %148
  %156 = load i32, i32* @DWC3_TRB_CTRL_IOC, align 4
  %157 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %158 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %151
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* @DWC3_TRB_CTRL_CHN, align 4
  %166 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %167 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %161
  %171 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %172 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @usb_endpoint_xfer_bulk(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %170
  %178 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %179 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @DWC3_TRB_CTRL_SID_SOFN(i32 %183)
  %185 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %186 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %182, %177, %170
  %190 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %191 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %192 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  %195 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %196 = call i32 @dwc3_ep_inc_enq(%struct.dwc3_ep* %195)
  %197 = load %struct.dwc3_ep*, %struct.dwc3_ep** %10, align 8
  %198 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %199 = call i32 @trace_dwc3_prepare_trb(%struct.dwc3_ep* %197, %struct.dwc3_trb* %198)
  ret void
}

declare dso_local i32 @DWC3_TRB_SIZE_LENGTH(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @usb_endpoint_type(i32) #1

declare dso_local i32 @usb_endpoint_maxp(i32) #1

declare dso_local i32 @DWC3_TRB_SIZE_PCM1(i32) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

declare dso_local i64 @usb_endpoint_dir_out(i32) #1

declare dso_local i32 @dwc3_calc_trbs_left(%struct.dwc3_ep*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32) #1

declare dso_local i32 @DWC3_TRB_CTRL_SID_SOFN(i32) #1

declare dso_local i32 @dwc3_ep_inc_enq(%struct.dwc3_ep*) #1

declare dso_local i32 @trace_dwc3_prepare_trb(%struct.dwc3_ep*, %struct.dwc3_trb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
