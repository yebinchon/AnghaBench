; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_set_clear_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c_xudc_set_clear_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_udc = type { i32, i32 (i64)*, i32, i64, i32 (i64, i64, i32)*, %struct.TYPE_3__, %struct.xusb_ep*, %struct.xusb_req* }
%struct.TYPE_3__ = type { i64, i32, i64, i32 }
%struct.xusb_ep = type { i64, i64 }
%struct.xusb_req = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@USB_REQ_SET_FEATURE = common dso_local global i64 0, align 8
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i64 0, align 8
@USB_ENDPOINT_DIR_MASK = common dso_local global i64 0, align 8
@XUSB_EP_CFG_STALL_MASK = common dso_local global i32 0, align 4
@XUSB_EP_CFG_DATA_TOGGLE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't respond to SET/CLEAR FEATURE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xusb_udc*)* @xudc_set_clear_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xudc_set_clear_feature(%struct.xusb_udc* %0) #0 {
  %2 = alloca %struct.xusb_udc*, align 8
  %3 = alloca %struct.xusb_ep*, align 8
  %4 = alloca %struct.xusb_req*, align 8
  %5 = alloca %struct.xusb_ep*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xusb_udc* %0, %struct.xusb_udc** %2, align 8
  %11 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %12 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %11, i32 0, i32 6
  %13 = load %struct.xusb_ep*, %struct.xusb_ep** %12, align 8
  %14 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %13, i64 0
  store %struct.xusb_ep* %14, %struct.xusb_ep** %3, align 8
  %15 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %16 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %15, i32 0, i32 7
  %17 = load %struct.xusb_req*, %struct.xusb_req** %16, align 8
  store %struct.xusb_req* %17, %struct.xusb_req** %4, align 8
  %18 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %19 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @USB_REQ_SET_FEATURE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %9, align 4
  %26 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %27 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %153 [
    i32 129, label %30
    i32 128, label %50
  ]

30:                                               ; preds = %1
  %31 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %32 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %46 [
    i32 130, label %35
    i32 131, label %36
  ]

35:                                               ; preds = %30
  br label %49

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %41 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %45

42:                                               ; preds = %36
  %43 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %44 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %39
  br label %49

46:                                               ; preds = %30
  %47 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %48 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %47)
  br label %49

49:                                               ; preds = %46, %45, %35
  br label %156

50:                                               ; preds = %1
  %51 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %52 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %152, label %56

56:                                               ; preds = %50
  %57 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %58 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @USB_ENDPOINT_NUMBER_MASK, align 8
  %62 = and i64 %60, %61
  store i64 %62, i64* %6, align 8
  %63 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %64 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %63, i32 0, i32 6
  %65 = load %struct.xusb_ep*, %struct.xusb_ep** %64, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %65, i64 %66
  store %struct.xusb_ep* %67, %struct.xusb_ep** %5, align 8
  %68 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %69 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @USB_ENDPOINT_DIR_MASK, align 8
  %73 = and i64 %71, %72
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = lshr i64 %74, 7
  store i64 %75, i64* %7, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %78 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %56
  %82 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %83 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %82)
  br label %173

84:                                               ; preds = %56
  %85 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %86 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %85, i32 0, i32 1
  %87 = load i32 (i64)*, i32 (i64)** %86, align 8
  %88 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %89 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %92 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = call i32 %87(i64 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i64, i64* %6, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %114, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %104 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %103, i32 0, i32 4
  %105 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %104, align 8
  %106 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %107 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %110 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 %105(i64 %108, i64 %111, i32 %112)
  br label %151

114:                                              ; preds = %84
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %114
  %118 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %122 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %121, i32 0, i32 4
  %123 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %122, align 8
  %124 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %125 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %128 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 %123(i64 %126, i64 %129, i32 %130)
  br label %150

132:                                              ; preds = %114
  %133 = load i32, i32* @XUSB_EP_CFG_STALL_MASK, align 4
  %134 = load i32, i32* @XUSB_EP_CFG_DATA_TOGGLE_MASK, align 4
  %135 = or i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %8, align 4
  %139 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %140 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %139, i32 0, i32 4
  %141 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %140, align 8
  %142 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %143 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.xusb_ep*, %struct.xusb_ep** %5, align 8
  %146 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 %141(i64 %144, i64 %147, i32 %148)
  br label %150

150:                                              ; preds = %132, %117
  br label %151

151:                                              ; preds = %150, %98
  br label %152

152:                                              ; preds = %151, %50
  br label %156

153:                                              ; preds = %1
  %154 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %155 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %154)
  br label %173

156:                                              ; preds = %152, %49
  %157 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %158 = getelementptr inbounds %struct.xusb_req, %struct.xusb_req* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i64 0, i64* %159, align 8
  %160 = load %struct.xusb_ep*, %struct.xusb_ep** %3, align 8
  %161 = load %struct.xusb_req*, %struct.xusb_req** %4, align 8
  %162 = call i32 @__xudc_ep0_queue(%struct.xusb_ep* %160, %struct.xusb_req* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %173

166:                                              ; preds = %156
  %167 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %168 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @dev_err(i32 %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %171 = load %struct.xusb_udc*, %struct.xusb_udc** %2, align 8
  %172 = call i32 @xudc_ep0_stall(%struct.xusb_udc* %171)
  br label %173

173:                                              ; preds = %166, %165, %153, %81
  ret void
}

declare dso_local i32 @xudc_ep0_stall(%struct.xusb_udc*) #1

declare dso_local i32 @__xudc_ep0_queue(%struct.xusb_ep*, %struct.xusb_req*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
