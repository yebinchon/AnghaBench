; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_ep = type { i32, i32, i32 }
%struct.pch_udc_cfg_data = type { i32, i32, i32 }
%struct.usb_endpoint_descriptor = type { i32 }

@UDC_EPIN_BUFF_SIZE = common dso_local global i32 0, align 4
@UDC_EPOUT_BUFF_SIZE = common dso_local global i32 0, align 4
@UDC_CSR_NE_NUM_SHIFT = common dso_local global i32 0, align 4
@UDC_CSR_NE_DIR_SHIFT = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@UDC_CSR_NE_TYPE_SHIFT = common dso_local global i32 0, align 4
@UDC_CSR_NE_CFG_SHIFT = common dso_local global i32 0, align 4
@UDC_CSR_NE_INTF_SHIFT = common dso_local global i32 0, align 4
@UDC_CSR_NE_ALT_SHIFT = common dso_local global i32 0, align 4
@UDC_CSR_NE_MAX_PKT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_ep*, %struct.pch_udc_cfg_data*, %struct.usb_endpoint_descriptor*)* @pch_udc_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_ep_enable(%struct.pch_udc_ep* %0, %struct.pch_udc_cfg_data* %1, %struct.usb_endpoint_descriptor* %2) #0 {
  %4 = alloca %struct.pch_udc_ep*, align 8
  %5 = alloca %struct.pch_udc_cfg_data*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pch_udc_ep* %0, %struct.pch_udc_ep** %4, align 8
  store %struct.pch_udc_cfg_data* %1, %struct.pch_udc_cfg_data** %5, align 8
  store %struct.usb_endpoint_descriptor* %2, %struct.usb_endpoint_descriptor** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %11 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pch_udc_ep_set_trfr_type(%struct.pch_udc_ep* %9, i32 %12)
  %14 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %15 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @UDC_EPIN_BUFF_SIZE, align 4
  store i32 %19, i32* %8, align 4
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @UDC_EPOUT_BUFF_SIZE, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %26 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pch_udc_ep_set_bufsz(%struct.pch_udc_ep* %23, i32 %24, i32 %27)
  %29 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %31 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %30)
  %32 = call i32 @pch_udc_ep_set_maxpkt(%struct.pch_udc_ep* %29, i32 %31)
  %33 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %34 = call i32 @pch_udc_ep_set_nak(%struct.pch_udc_ep* %33)
  %35 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %36 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %37 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pch_udc_ep_fifo_flush(%struct.pch_udc_ep* %35, i32 %38)
  %40 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %41 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UDC_CSR_NE_NUM_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %46 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @UDC_CSR_NE_DIR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %44, %49
  %51 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %52 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @UDC_CSR_NE_TYPE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %50, %57
  %59 = load %struct.pch_udc_cfg_data*, %struct.pch_udc_cfg_data** %5, align 8
  %60 = getelementptr inbounds %struct.pch_udc_cfg_data, %struct.pch_udc_cfg_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UDC_CSR_NE_CFG_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  %65 = load %struct.pch_udc_cfg_data*, %struct.pch_udc_cfg_data** %5, align 8
  %66 = getelementptr inbounds %struct.pch_udc_cfg_data, %struct.pch_udc_cfg_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UDC_CSR_NE_INTF_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = or i32 %64, %69
  %71 = load %struct.pch_udc_cfg_data*, %struct.pch_udc_cfg_data** %5, align 8
  %72 = getelementptr inbounds %struct.pch_udc_cfg_data, %struct.pch_udc_cfg_data* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @UDC_CSR_NE_ALT_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %70, %75
  %77 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %78 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %77)
  %79 = load i32, i32* @UDC_CSR_NE_MAX_PKT_SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %76, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %83 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %22
  %87 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %88 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %92 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @UDC_EPIN_IDX(i32 %93)
  %95 = call i32 @pch_udc_write_csr(i32 %89, i32 %90, i32 %94)
  br label %106

96:                                               ; preds = %22
  %97 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %98 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %102 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @UDC_EPOUT_IDX(i32 %103)
  %105 = call i32 @pch_udc_write_csr(i32 %99, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %96, %86
  ret void
}

declare dso_local i32 @pch_udc_ep_set_trfr_type(%struct.pch_udc_ep*, i32) #1

declare dso_local i32 @pch_udc_ep_set_bufsz(%struct.pch_udc_ep*, i32, i32) #1

declare dso_local i32 @pch_udc_ep_set_maxpkt(%struct.pch_udc_ep*, i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @pch_udc_ep_set_nak(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_ep_fifo_flush(%struct.pch_udc_ep*, i32) #1

declare dso_local i32 @pch_udc_write_csr(i32, i32, i32) #1

declare dso_local i32 @UDC_EPIN_IDX(i32) #1

declare dso_local i32 @UDC_EPOUT_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
