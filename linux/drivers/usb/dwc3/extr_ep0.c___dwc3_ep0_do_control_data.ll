; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c___dwc3_ep0_do_control_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c___dwc3_ep0_do_control_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32*, i32, i32, i32 }
%struct.dwc3_ep = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dwc3_request = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64 }

@DWC3_TRBCTL_CONTROL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_ep*, %struct.dwc3_request*)* @__dwc3_ep0_do_control_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dwc3_ep0_do_control_data(%struct.dwc3* %0, %struct.dwc3_ep* %1, %struct.dwc3_request* %2) #0 {
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.dwc3_ep*, align 8
  %6 = alloca %struct.dwc3_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.dwc3_ep* %1, %struct.dwc3_ep** %5, align 8
  store %struct.dwc3_request* %2, %struct.dwc3_request** %6, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %18 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %20 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %26 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %27 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %30 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %25, i32 %28, i32 0, i32 %29, i32 0)
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %32 = call i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %31)
  store i32 %32, i32* %7, align 4
  br label %214

33:                                               ; preds = %3
  %34 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %35 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %39 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ALIGNED(i32 %37, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %108, label %44

44:                                               ; preds = %33
  %45 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %46 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %108

49:                                               ; preds = %44
  %50 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %51 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %54 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %53, i32 0, i32 2
  %55 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %56 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @usb_gadget_map_request_by_dev(i32 %52, %struct.TYPE_4__* %54, i64 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %219

62:                                               ; preds = %49
  %63 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %64 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  %67 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %68 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = srem i32 %70, %71
  store i32 %72, i32* %9, align 4
  %73 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %76 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %77 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %81 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %85 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %75, i32 %79, i32 %83, i32 %84, i32 1)
  %86 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %87 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %90 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %96 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %98 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %99 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %105 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %97, i32 %100, i32 %103, i32 %104, i32 0)
  %106 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %107 = call i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %106)
  store i32 %107, i32* %7, align 4
  br label %213

108:                                              ; preds = %44, %33
  %109 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %110 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %114 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @IS_ALIGNED(i32 %112, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %108
  %120 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %121 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %175

125:                                              ; preds = %119
  %126 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %127 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %175

131:                                              ; preds = %125
  %132 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %133 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %136 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %135, i32 0, i32 2
  %137 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %138 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @usb_gadget_map_request_by_dev(i32 %134, %struct.TYPE_4__* %136, i64 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %131
  br label %219

144:                                              ; preds = %131
  %145 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %146 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %147 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %151 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %155 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %145, i32 %149, i32 %153, i32 %154, i32 1)
  %156 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %157 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %160 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %158, i64 %163
  %165 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %166 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %165, i32 0, i32 1
  store i32* %164, i32** %166, align 8
  %167 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %168 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %169 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %172 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %167, i32 %170, i32 0, i32 %171, i32 0)
  %173 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %174 = call i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %173)
  store i32 %174, i32* %7, align 4
  br label %212

175:                                              ; preds = %125, %119, %108
  %176 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %177 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %180 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %179, i32 0, i32 2
  %181 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %182 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @usb_gadget_map_request_by_dev(i32 %178, %struct.TYPE_4__* %180, i64 %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %175
  br label %219

188:                                              ; preds = %175
  %189 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %190 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %191 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %195 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @DWC3_TRBCTL_CONTROL_DATA, align 4
  %199 = call i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep* %189, i32 %193, i32 %197, i32 %198, i32 0)
  %200 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %201 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %204 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %202, i64 %206
  %208 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %209 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %208, i32 0, i32 1
  store i32* %207, i32** %209, align 8
  %210 = load %struct.dwc3_ep*, %struct.dwc3_ep** %5, align 8
  %211 = call i32 @dwc3_ep0_start_trans(%struct.dwc3_ep* %210)
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %188, %144
  br label %213

213:                                              ; preds = %212, %62
  br label %214

214:                                              ; preds = %213, %24
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %215, 0
  %217 = zext i1 %216 to i32
  %218 = call i32 @WARN_ON(i32 %217)
  br label %219

219:                                              ; preds = %214, %187, %143, %61
  ret void
}

declare dso_local i32 @dwc3_ep0_prepare_one_trb(%struct.dwc3_ep*, i32, i32, i32, i32) #1

declare dso_local i32 @dwc3_ep0_start_trans(%struct.dwc3_ep*) #1

declare dso_local i64 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @usb_gadget_map_request_by_dev(i32, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
