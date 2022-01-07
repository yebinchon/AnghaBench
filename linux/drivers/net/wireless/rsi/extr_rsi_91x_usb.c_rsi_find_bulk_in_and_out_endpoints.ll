; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_find_bulk_in_and_out_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_usb.c_rsi_find_bulk_in_and_out_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32, i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.rsi_hw = type { i64 }
%struct.rsi_91x_usbdev = type { i32*, i32*, i8**, i8** }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i32 0, align 4
@MAX_BULK_EP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.rsi_hw*)* @rsi_find_bulk_in_and_out_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_find_bulk_in_and_out_endpoints(%struct.usb_interface* %0, %struct.rsi_hw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.rsi_hw*, align 8
  %6 = alloca %struct.rsi_91x_usbdev*, align 8
  %7 = alloca %struct.usb_host_interface*, align 8
  %8 = alloca %struct.usb_endpoint_descriptor*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.rsi_hw* %1, %struct.rsi_hw** %5, align 8
  %13 = load %struct.rsi_hw*, %struct.rsi_hw** %5, align 8
  %14 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rsi_91x_usbdev*
  store %struct.rsi_91x_usbdev* %16, %struct.rsi_91x_usbdev** %6, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %18 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %17, i32 0, i32 0
  %19 = load %struct.usb_host_interface*, %struct.usb_host_interface** %18, align 8
  %20 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %19, i64 0
  store %struct.usb_host_interface* %20, %struct.usb_host_interface** %7, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %137, %2
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %24 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %140

28:                                               ; preds = %21
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %7, align 8
  %30 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %35, %struct.usb_endpoint_descriptor** %8, align 8
  %36 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %37 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %28
  %45 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %46 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USB_DIR_IN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %44
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %53 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %51
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %61 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %9, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %65 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %64, i32 0, i32 3
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  store i8* %63, i8** %69, align 8
  %70 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %71 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %74 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %59, %51, %44, %28
  %82 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %83 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %127, label %90

90:                                               ; preds = %81
  %91 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %92 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @USB_DIR_IN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %127, label %97

97:                                               ; preds = %90
  %98 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %99 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @USB_ENDPOINT_XFER_BULK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %97
  %106 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %107 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %9, align 8
  %109 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %8, align 8
  %110 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %113 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %111, i32* %117, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %120 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %119, i32 0, i32 2
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %127

127:                                              ; preds = %105, %97, %90, %81
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @MAX_BULK_EP, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %135, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @MAX_BULK_EP, align 4
  %134 = icmp sge i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131, %127
  br label %140

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %21

140:                                              ; preds = %135, %21
  %141 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %142 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %140
  %148 = load %struct.rsi_91x_usbdev*, %struct.rsi_91x_usbdev** %6, align 8
  %149 = getelementptr inbounds %struct.rsi_91x_usbdev, %struct.rsi_91x_usbdev* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %158

157:                                              ; preds = %147, %140
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
