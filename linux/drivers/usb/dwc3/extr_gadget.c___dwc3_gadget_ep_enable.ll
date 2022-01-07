; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.dwc3_trb*, i32, i64, i64, i32, i32, %struct.dwc3*, %struct.TYPE_2__ }
%struct.dwc3_trb = type { i8*, i8*, i32, i8*, i8* }
%struct.dwc3 = type { i32 }
%struct.TYPE_2__ = type { %struct.usb_endpoint_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.dwc3_gadget_ep_cmd_params = type { i8*, i8*, i32, i8*, i8* }

@DWC3_EP_ENABLED = common dso_local global i32 0, align 4
@DWC3_DALEPENA = common dso_local global i32 0, align 4
@DWC3_TRB_NUM = common dso_local global i32 0, align 4
@DWC3_TRBCTL_LINK_TRB = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@DWC3_DEPCMD_STARTTRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, i32)* @__dwc3_gadget_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_ep_enable(%struct.dwc3_ep* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.dwc3*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dwc3_trb*, align 8
  %11 = alloca %struct.dwc3_trb*, align 8
  %12 = alloca %struct.dwc3_gadget_ep_cmd_params, align 8
  %13 = alloca %struct.dwc3_trb*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %18, align 8
  store %struct.usb_endpoint_descriptor* %19, %struct.usb_endpoint_descriptor** %6, align 8
  %20 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %21 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %20, i32 0, i32 7
  %22 = load %struct.dwc3*, %struct.dwc3** %21, align 8
  store %struct.dwc3* %22, %struct.dwc3** %7, align 8
  %23 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %24 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %2
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %31 = call i32 @dwc3_gadget_start_config(%struct.dwc3_ep* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %172

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dwc3_gadget_set_ep_config(%struct.dwc3_ep* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %172

45:                                               ; preds = %37
  %46 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %47 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %129, label %52

52:                                               ; preds = %45
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %54 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %53)
  %55 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %56 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @DWC3_EP_ENABLED, align 4
  %58 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %59 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %63 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DWC3_DALEPENA, align 4
  %66 = call i32 @dwc3_readl(i32 %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %68 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @DWC3_DALEPENA_EP(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %74 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DWC3_DALEPENA, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dwc3_writel(i32 %75, i32 %76, i32 %77)
  %79 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %80 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %52
  br label %169

83:                                               ; preds = %52
  %84 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %85 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %87 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %89 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %88, i32 0, i32 1
  %90 = load %struct.dwc3_trb*, %struct.dwc3_trb** %89, align 8
  %91 = load i32, i32* @DWC3_TRB_NUM, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 40, %92
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memset(%struct.dwc3_trb* %90, i32 0, i32 %94)
  %96 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %97 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %96, i32 0, i32 1
  %98 = load %struct.dwc3_trb*, %struct.dwc3_trb** %97, align 8
  %99 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %98, i64 0
  store %struct.dwc3_trb* %99, %struct.dwc3_trb** %10, align 8
  %100 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %101 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %100, i32 0, i32 1
  %102 = load %struct.dwc3_trb*, %struct.dwc3_trb** %101, align 8
  %103 = load i32, i32* @DWC3_TRB_NUM, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %102, i64 %105
  store %struct.dwc3_trb* %106, %struct.dwc3_trb** %11, align 8
  %107 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %108 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %109 = call i32 @dwc3_trb_dma_offset(%struct.dwc3_ep* %107, %struct.dwc3_trb* %108)
  %110 = call i8* @lower_32_bits(i32 %109)
  %111 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %112 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %114 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %115 = call i32 @dwc3_trb_dma_offset(%struct.dwc3_ep* %113, %struct.dwc3_trb* %114)
  %116 = call i8* @upper_32_bits(i32 %115)
  %117 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %118 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @DWC3_TRBCTL_LINK_TRB, align 4
  %120 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %121 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %125 = load %struct.dwc3_trb*, %struct.dwc3_trb** %11, align 8
  %126 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %83, %45
  %130 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %131 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %135 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133, %129
  %139 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %140 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %138, %133
  %143 = bitcast %struct.dwc3_gadget_ep_cmd_params* %12 to %struct.dwc3_trb*
  %144 = call i32 @memset(%struct.dwc3_trb* %143, i32 0, i32 40)
  %145 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %146 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %145, i32 0, i32 1
  %147 = load %struct.dwc3_trb*, %struct.dwc3_trb** %146, align 8
  %148 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %147, i64 0
  store %struct.dwc3_trb* %148, %struct.dwc3_trb** %13, align 8
  %149 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %150 = load %struct.dwc3_trb*, %struct.dwc3_trb** %13, align 8
  %151 = call i32 @dwc3_trb_dma_offset(%struct.dwc3_ep* %149, %struct.dwc3_trb* %150)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = call i8* @upper_32_bits(i32 %152)
  %154 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %12, i32 0, i32 1
  store i8* %153, i8** %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = call i8* @lower_32_bits(i32 %155)
  %157 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %12, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = load i32, i32* @DWC3_DEPCMD_STARTTRANSFER, align 4
  store i32 %158, i32* %15, align 4
  %159 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %160 = load i32, i32* %15, align 4
  %161 = bitcast %struct.dwc3_gadget_ep_cmd_params* %12 to %struct.dwc3_trb*
  %162 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %159, i32 %160, %struct.dwc3_trb* %161)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %142
  %166 = load i32, i32* %9, align 4
  store i32 %166, i32* %3, align 4
  br label %172

167:                                              ; preds = %142
  br label %168

168:                                              ; preds = %167, %138
  br label %169

169:                                              ; preds = %168, %82
  %170 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %171 = call i32 @trace_dwc3_gadget_ep_enable(%struct.dwc3_ep* %170)
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %169, %165, %43, %34
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @dwc3_gadget_start_config(%struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_gadget_set_ep_config(%struct.dwc3_ep*, i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_DALEPENA_EP(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @memset(%struct.dwc3_trb*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @dwc3_trb_dma_offset(%struct.dwc3_ep*, %struct.dwc3_trb*) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_trb*) #1

declare dso_local i32 @trace_dwc3_gadget_ep_enable(%struct.dwc3_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
