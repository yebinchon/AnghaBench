; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_cbaf.c_cbaf_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbaf = type { %struct.wusb_cbaf_assoc_info*, i32, %struct.TYPE_6__*, i32 }
%struct.wusb_cbaf_assoc_info = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.wusb_cbaf_assoc_request = type { i32, i32, i32, i32 }

@CBAF_REQ_GET_ASSOCIATION_INFORMATION = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_CTRL_GET_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Cannot get available association types: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"Not enough data to decode association info header (%zu vs %zu bytes required)\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"Not enough data to decode association info (%zu vs %zu bytes required)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Found %u association requests (%zu bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Not enough data to decode association request (%zu vs %zu bytes needed)\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"RETRIEVE_HOST_INFO\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"ASSOCIATE\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Association request #%02u: 0x%04x/%04x (%zu bytes): %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"Missing RETRIEVE_HOST_INFO association request\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"Missing ASSOCIATE association request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_check(%struct.cbaf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbaf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.wusb_cbaf_assoc_info*, align 8
  %7 = alloca %struct.wusb_cbaf_assoc_request*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.cbaf* %0, %struct.cbaf** %3, align 8
  %17 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %18 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store %struct.device* %20, %struct.device** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %22 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %25 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @usb_rcvctrlpipe(i32 %26, i32 0)
  %28 = load i32, i32* @CBAF_REQ_GET_ASSOCIATION_INFORMATION, align 4
  %29 = load i32, i32* @USB_DIR_IN, align 4
  %30 = load i32, i32* @USB_TYPE_CLASS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %35 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %34, i32 0, i32 2
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %43 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %42, i32 0, i32 0
  %44 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %43, align 8
  %45 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %46 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @USB_CTRL_GET_TIMEOUT, align 4
  %49 = call i32 @usb_control_msg(i32 %23, i32 %27, i32 %28, i32 %33, i32 0, i32 %41, %struct.wusb_cbaf_assoc_info* %44, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %1
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %53, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %171

57:                                               ; preds = %1
  %58 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %59 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %58, i32 0, i32 0
  %60 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %59, align 8
  store %struct.wusb_cbaf_assoc_info* %60, %struct.wusb_cbaf_assoc_info** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 8
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.device*, %struct.device** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %65, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 8)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %171

70:                                               ; preds = %57
  %71 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %6, align 8
  %72 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @le16_to_cpu(i32 %73)
  store i64 %74, i64* %8, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* %8, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %80, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %81, i64 8)
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %171

84:                                               ; preds = %70
  %85 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %86 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %85, i32 0, i32 0
  %87 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %86, align 8
  %88 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %87, i64 8
  %89 = bitcast %struct.wusb_cbaf_assoc_info* %88 to i8*
  store i8* %89, i8** %9, align 8
  %90 = load %struct.cbaf*, %struct.cbaf** %3, align 8
  %91 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %90, i32 0, i32 0
  %92 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %92, i64 %93
  %95 = bitcast %struct.wusb_cbaf_assoc_info* %94 to i8*
  store i8* %95, i8** %10, align 8
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load %struct.wusb_cbaf_assoc_info*, %struct.wusb_cbaf_assoc_info** %6, align 8
  %98 = getelementptr inbounds %struct.wusb_cbaf_assoc_info, %struct.wusb_cbaf_assoc_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i64, i64* %8, align 8
  %101 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %142, %84
  %103 = load i8*, i8** %9, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %102
  %107 = load i8*, i8** %9, align 8
  %108 = bitcast i8* %107 to %struct.wusb_cbaf_assoc_request*
  store %struct.wusb_cbaf_assoc_request* %108, %struct.wusb_cbaf_assoc_request** %7, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp ult i64 %113, 16
  br i1 %114, label %115, label %123

115:                                              ; preds = %106
  %116 = load %struct.device*, %struct.device** %5, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = load i8*, i8** %9, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %116, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0), i64 %121, i64 16)
  br label %154

123:                                              ; preds = %106
  %124 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %125 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @le16_to_cpu(i32 %126)
  store i64 %127, i64* %13, align 8
  %128 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %129 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le16_to_cpu(i32 %130)
  store i64 %131, i64* %14, align 8
  %132 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %133 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @le32_to_cpu(i32 %134)
  store i64 %135, i64* %15, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  %136 = load i64, i64* %13, align 8
  switch i64 %136, label %142 [
    i64 130, label %137
  ]

137:                                              ; preds = %123
  %138 = load i64, i64* %14, align 8
  switch i64 %138, label %141 [
    i64 128, label %139
    i64 129, label %140
  ]

139:                                              ; preds = %137
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %11, align 4
  br label %141

140:                                              ; preds = %137
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  store i32 1, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %140, %139
  br label %142

142:                                              ; preds = %123, %141
  %143 = load %struct.device*, %struct.device** %5, align 8
  %144 = load %struct.wusb_cbaf_assoc_request*, %struct.wusb_cbaf_assoc_request** %7, align 8
  %145 = getelementptr inbounds %struct.wusb_cbaf_assoc_request, %struct.wusb_cbaf_assoc_request* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %13, align 8
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i8*, i8** %16, align 8
  %151 = call i32 (%struct.device*, i8*, i32, i64, ...) @dev_dbg(%struct.device* %143, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %146, i64 %147, i64 %148, i64 %149, i8* %150)
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr i8, i8* %152, i64 16
  store i8* %153, i8** %9, align 8
  br label %102

154:                                              ; preds = %115, %102
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %171

162:                                              ; preds = %154
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %162
  %166 = load %struct.device*, %struct.device** %5, align 8
  %167 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %2, align 4
  br label %171

170:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %170, %165, %157, %79, %64, %52
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_assoc_info*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64, ...) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
