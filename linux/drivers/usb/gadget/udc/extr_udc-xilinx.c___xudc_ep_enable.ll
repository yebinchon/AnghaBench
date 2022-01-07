; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c___xudc_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_udc-xilinx.c___xudc_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xusb_ep = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__, %struct.usb_endpoint_descriptor*, %struct.xusb_udc* }
%struct.TYPE_2__ = type { i32, %struct.usb_endpoint_descriptor* }
%struct.xusb_udc = type { i32 (i64)*, i64, i32 (i64, i64, i32)*, i32 }
%struct.usb_endpoint_descriptor = type { i32, i32, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"only one control endpoint\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bogus maxpacket %d\0A\00", align 1
@rambase = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Enable Endpoint %d max pkt is %d\0A\00", align 1
@XUSB_EP_CFG_VALID_MASK = common dso_local global i32 0, align 4
@XUSB_IER_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_INTR_BUFF_COMP_SHIFT_MASK = common dso_local global i32 0, align 4
@XUSB_BUFFREADY_OFFSET = common dso_local global i64 0, align 8
@XUSB_STATUS_EP_BUFF2_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xusb_ep*, %struct.usb_endpoint_descriptor*)* @__xudc_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xudc_ep_enable(%struct.xusb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xusb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.xusb_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xusb_ep* %0, %struct.xusb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  %11 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %12 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %11, i32 0, i32 10
  %13 = load %struct.xusb_udc*, %struct.xusb_udc** %12, align 8
  store %struct.xusb_udc* %13, %struct.xusb_udc** %6, align 8
  %14 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %15 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %22 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 15
  %27 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %28 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %30 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %31 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %30, i32 0, i32 9
  store %struct.usb_endpoint_descriptor* %29, %struct.usb_endpoint_descriptor** %31, align 8
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %33 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %34 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %32, %struct.usb_endpoint_descriptor** %35, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %37 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %7, align 4
  %41 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le16_to_cpu(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %46 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %96 [
    i32 130, label %49
    i32 129, label %58
    i32 131, label %72
    i32 128, label %93
  ]

49:                                               ; preds = %2
  %50 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %51 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %55 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %224

58:                                               ; preds = %2
  %59 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %60 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %59, i32 0, i32 2
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = icmp sgt i32 %61, 64
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %65 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %224

71:                                               ; preds = %58
  br label %96

72:                                               ; preds = %2
  %73 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %74 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @is_power_of_2(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 8
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = icmp sle i32 %82, 512
  br i1 %83, label %92, label %84

84:                                               ; preds = %81, %78, %72
  %85 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %86 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %224

92:                                               ; preds = %81
  br label %96

93:                                               ; preds = %2
  %94 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %95 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %94, i32 0, i32 2
  store i32 1, i32* %95, align 8
  br label %96

96:                                               ; preds = %2, %93, %92, %71
  %97 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %98 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %97, i32 0, i32 3
  store i32 0, i32* %98, align 4
  %99 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %100 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %99, i32 0, i32 4
  store i32 0, i32* %100, align 8
  %101 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %102 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load i32*, i32** @rambase, align 8
  %104 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %105 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %111 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %113 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %114 = call i32 @xudc_epconfig(%struct.xusb_ep* %112, %struct.xusb_udc* %113)
  %115 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %116 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %119 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 (i32, i8*, ...) @dev_dbg(i32 %117, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %124 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %123, i32 0, i32 0
  %125 = load i32 (i64)*, i32 (i64)** %124, align 8
  %126 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %127 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %130 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %128, %131
  %133 = call i32 %125(i64 %132)
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* @XUSB_EP_CFG_VALID_MASK, align 4
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  %137 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %138 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %137, i32 0, i32 2
  %139 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %138, align 8
  %140 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %141 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %144 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 %139(i64 %142, i64 %145, i32 %146)
  %148 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %149 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %96
  %153 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %154 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 2
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %152, %96
  %158 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %159 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %158, i32 0, i32 0
  %160 = load i32 (i64)*, i32 (i64)** %159, align 8
  %161 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %162 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %165 = add nsw i64 %163, %164
  %166 = call i32 %160(i64 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* @XUSB_STATUS_INTR_BUFF_COMP_SHIFT_MASK, align 4
  %168 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %169 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = shl i32 %167, %170
  %172 = load i32, i32* %9, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %175 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %174, i32 0, i32 2
  %176 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %175, align 8
  %177 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %178 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @XUSB_IER_OFFSET, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 %176(i64 %179, i64 %180, i32 %181)
  %183 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %184 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %223

187:                                              ; preds = %157
  %188 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %189 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %223, label %192

192:                                              ; preds = %187
  %193 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %194 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %193, i32 0, i32 2
  %195 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %194, align 8
  %196 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %197 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @XUSB_BUFFREADY_OFFSET, align 8
  %200 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %201 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = shl i32 1, %202
  %204 = call i32 %195(i64 %198, i64 %199, i32 %203)
  %205 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %206 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %205, i32 0, i32 3
  store i32 1, i32* %206, align 4
  %207 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %208 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %207, i32 0, i32 2
  %209 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %208, align 8
  %210 = load %struct.xusb_udc*, %struct.xusb_udc** %6, align 8
  %211 = getelementptr inbounds %struct.xusb_udc, %struct.xusb_udc* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @XUSB_BUFFREADY_OFFSET, align 8
  %214 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %215 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @XUSB_STATUS_EP_BUFF2_SHIFT, align 4
  %218 = add nsw i32 %216, %217
  %219 = shl i32 1, %218
  %220 = call i32 %209(i64 %212, i64 %213, i32 %219)
  %221 = load %struct.xusb_ep*, %struct.xusb_ep** %4, align 8
  %222 = getelementptr inbounds %struct.xusb_ep, %struct.xusb_ep* %221, i32 0, i32 4
  store i32 1, i32* %222, align 8
  br label %223

223:                                              ; preds = %192, %187, %157
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %223, %84, %63, %49
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @xudc_epconfig(%struct.xusb_ep*, %struct.xusb_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
