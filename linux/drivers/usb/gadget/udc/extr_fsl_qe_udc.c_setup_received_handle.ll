; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_setup_received_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_qe_udc.c_setup_received_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_udc = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.qe_ep* }
%struct.TYPE_2__ = type { i64 (i32*, i32*)* }
%struct.qe_ep = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32, i32, i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@USB_MAX_ENDPOINTS = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i32 0, align 4
@DATA_STATE_RECV = common dso_local global i32 0, align 4
@DATA_STATE_NEED_ZLP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qe_udc*, %struct.usb_ctrlrequest*)* @setup_received_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_received_handle(%struct.qe_udc* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.qe_udc*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qe_ep*, align 8
  store %struct.qe_udc* %0, %struct.qe_udc** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  %10 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @le16_to_cpu(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le16_to_cpu(i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @le16_to_cpu(i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %23 = call i32 @udc_reset_ep_queue(%struct.qe_udc* %22, i32 0)
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @USB_DIR_IN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* @USB_DIR_IN, align 4
  %32 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %33 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @USB_DIR_OUT, align 4
  %36 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %37 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %40 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %139 [
    i32 130, label %42
    i32 129, label %64
    i32 131, label %81
    i32 128, label %81
  ]

42:                                               ; preds = %38
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USB_DIR_IN, align 4
  %47 = load i32, i32* @USB_TYPE_MASK, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @USB_DIR_IN, align 4
  %51 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %52 = or i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %140

55:                                               ; preds = %42
  %56 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %57 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %58 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ch9getstatus(%struct.qe_udc* %56, i32 %59, i64 %60, i64 %61, i64 %62)
  br label %214

64:                                               ; preds = %38
  %65 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %66 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @USB_DIR_OUT, align 4
  %69 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %72 = or i32 %70, %71
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %140

75:                                               ; preds = %64
  %76 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @ch9setaddress(%struct.qe_udc* %76, i64 %77, i64 %78, i64 %79)
  br label %214

81:                                               ; preds = %38, %38
  %82 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %83 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @USB_TYPE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %140

90:                                               ; preds = %81
  %91 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %92 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @USB_RECIP_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %135

98:                                               ; preds = %90
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %101 = and i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load i64, i64* %5, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %7, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @USB_MAX_ENDPOINTS, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %105, %98
  br label %140

113:                                              ; preds = %108
  %114 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %115 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %114, i32 0, i32 6
  %116 = load %struct.qe_ep*, %struct.qe_ep** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %116, i64 %118
  store %struct.qe_ep* %119, %struct.qe_ep** %9, align 8
  %120 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %121 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %120, i32 0, i32 2
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.qe_ep*, %struct.qe_ep** %9, align 8
  %124 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %123, i32 0, i32 0
  %125 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %126 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 128
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 1, i32 0
  %131 = call i32 @qe_ep_set_halt(i32* %124, i32 %130)
  %132 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %133 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %132, i32 0, i32 2
  %134 = call i32 @spin_lock(i32* %133)
  br label %135

135:                                              ; preds = %113, %90
  %136 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %137 = load i32, i32* @USB_DIR_IN, align 4
  %138 = call i32 @ep0_prime_status(%struct.qe_udc* %136, i32 %137)
  br label %214

139:                                              ; preds = %38
  br label %140

140:                                              ; preds = %139, %112, %89, %74, %54
  %141 = load i64, i64* %7, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %186

143:                                              ; preds = %140
  %144 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %145 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @USB_DIR_IN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load i32, i32* @DATA_STATE_XMIT, align 4
  %152 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %153 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @USB_DIR_IN, align 4
  %155 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %156 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %164

157:                                              ; preds = %143
  %158 = load i32, i32* @DATA_STATE_RECV, align 4
  %159 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %160 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @USB_DIR_OUT, align 4
  %162 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %163 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %157, %150
  %165 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %166 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %165, i32 0, i32 2
  %167 = call i32 @spin_unlock(i32* %166)
  %168 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %169 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %168, i32 0, i32 5
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %171, align 8
  %173 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %174 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %173, i32 0, i32 4
  %175 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %176 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %175, i32 0, i32 3
  %177 = call i64 %172(i32* %174, i32* %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %164
  %180 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %181 = call i32 @qe_ep0_stall(%struct.qe_udc* %180)
  br label %182

182:                                              ; preds = %179, %164
  %183 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %184 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %183, i32 0, i32 2
  %185 = call i32 @spin_lock(i32* %184)
  br label %214

186:                                              ; preds = %140
  %187 = load i32, i32* @USB_DIR_IN, align 4
  %188 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %189 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %191 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %190, i32 0, i32 2
  %192 = call i32 @spin_unlock(i32* %191)
  %193 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %194 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %193, i32 0, i32 5
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i64 (i32*, i32*)*, i64 (i32*, i32*)** %196, align 8
  %198 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %199 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %198, i32 0, i32 4
  %200 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %201 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %200, i32 0, i32 3
  %202 = call i64 %197(i32* %199, i32* %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %186
  %205 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %206 = call i32 @qe_ep0_stall(%struct.qe_udc* %205)
  br label %207

207:                                              ; preds = %204, %186
  %208 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %209 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %208, i32 0, i32 2
  %210 = call i32 @spin_lock(i32* %209)
  %211 = load i32, i32* @DATA_STATE_NEED_ZLP, align 4
  %212 = load %struct.qe_udc*, %struct.qe_udc** %3, align 8
  %213 = getelementptr inbounds %struct.qe_udc, %struct.qe_udc* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %55, %75, %135, %207, %182
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @udc_reset_ep_queue(%struct.qe_udc*, i32) #1

declare dso_local i32 @ch9getstatus(%struct.qe_udc*, i32, i64, i64, i64) #1

declare dso_local i32 @ch9setaddress(%struct.qe_udc*, i64, i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qe_ep_set_halt(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ep0_prime_status(%struct.qe_udc*, i32) #1

declare dso_local i32 @qe_ep0_stall(%struct.qe_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
