; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_net2280_match_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_net2280.c_net2280_match_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_gadget = type { i32 }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i32 }

@USB_ENDPOINT_XFER_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ep-e\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ep-f\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"ep2in\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ep4in\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ep1out\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"ep3out\00", align 1
@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"ep1in\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"ep3in\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"ep2out\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"ep4out\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"ep%d%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_ep* (%struct.usb_gadget*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*)* @net2280_match_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_ep* @net2280_match_ep(%struct.usb_gadget* %0, %struct.usb_endpoint_descriptor* %1, %struct.usb_ss_ep_comp_descriptor* %2) #0 {
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca %struct.usb_ep*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %5, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %6, align 8
  store %struct.usb_ss_ep_comp_descriptor* %2, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %10 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %11 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %10)
  %12 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %3
  %15 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %16 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.usb_ep* %16, %struct.usb_ep** %9, align 8
  %17 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %18 = icmp ne %struct.usb_ep* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %21 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %23 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %24 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %20, %struct.usb_ep* %21, %struct.usb_endpoint_descriptor* %22, %struct.usb_ss_ep_comp_descriptor* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %27, %struct.usb_ep** %4, align 8
  br label %223

28:                                               ; preds = %19, %14
  %29 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %30 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.usb_ep* %30, %struct.usb_ep** %9, align 8
  %31 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %32 = icmp ne %struct.usb_ep* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %35 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %36 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %37 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %38 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %34, %struct.usb_ep* %35, %struct.usb_endpoint_descriptor* %36, %struct.usb_ss_ep_comp_descriptor* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %41, %struct.usb_ep** %4, align 8
  br label %223

42:                                               ; preds = %33, %28
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %45 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %44)
  %46 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %81

48:                                               ; preds = %43
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %50 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %54 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.usb_ep* %54, %struct.usb_ep** %9, align 8
  %55 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %56 = icmp ne %struct.usb_ep* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %59 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %60 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %61 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %62 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %58, %struct.usb_ep* %59, %struct.usb_endpoint_descriptor* %60, %struct.usb_ss_ep_comp_descriptor* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %65, %struct.usb_ep** %4, align 8
  br label %223

66:                                               ; preds = %57, %52
  %67 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %68 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store %struct.usb_ep* %68, %struct.usb_ep** %9, align 8
  %69 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %70 = icmp ne %struct.usb_ep* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %73 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %74 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %75 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %76 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %72, %struct.usb_ep* %73, %struct.usb_endpoint_descriptor* %74, %struct.usb_ss_ep_comp_descriptor* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %79, %struct.usb_ep** %4, align 8
  br label %223

80:                                               ; preds = %71, %66
  br label %198

81:                                               ; preds = %48, %43
  %82 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %83 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %82)
  %84 = load i64, i64* @USB_ENDPOINT_XFER_INT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %119

86:                                               ; preds = %81
  %87 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %88 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %119, label %90

90:                                               ; preds = %86
  %91 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %92 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.usb_ep* %92, %struct.usb_ep** %9, align 8
  %93 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %94 = icmp ne %struct.usb_ep* %93, null
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %97 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %98 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %99 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %100 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %96, %struct.usb_ep* %97, %struct.usb_endpoint_descriptor* %98, %struct.usb_ss_ep_comp_descriptor* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %103, %struct.usb_ep** %4, align 8
  br label %223

104:                                              ; preds = %95, %90
  %105 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %106 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store %struct.usb_ep* %106, %struct.usb_ep** %9, align 8
  %107 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %108 = icmp ne %struct.usb_ep* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %111 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %112 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %113 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %114 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %110, %struct.usb_ep* %111, %struct.usb_endpoint_descriptor* %112, %struct.usb_ss_ep_comp_descriptor* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %117, %struct.usb_ep** %4, align 8
  br label %223

118:                                              ; preds = %109, %104
  br label %197

119:                                              ; preds = %86, %81
  %120 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %121 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %120)
  %122 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %119
  %125 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %126 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %157

128:                                              ; preds = %124
  %129 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %130 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.usb_ep* %130, %struct.usb_ep** %9, align 8
  %131 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %132 = icmp ne %struct.usb_ep* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %135 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %136 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %137 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %138 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %134, %struct.usb_ep* %135, %struct.usb_endpoint_descriptor* %136, %struct.usb_ss_ep_comp_descriptor* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %141, %struct.usb_ep** %4, align 8
  br label %223

142:                                              ; preds = %133, %128
  %143 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %144 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  store %struct.usb_ep* %144, %struct.usb_ep** %9, align 8
  %145 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %146 = icmp ne %struct.usb_ep* %145, null
  br i1 %146, label %147, label %156

147:                                              ; preds = %142
  %148 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %149 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %150 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %151 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %152 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %148, %struct.usb_ep* %149, %struct.usb_endpoint_descriptor* %150, %struct.usb_ss_ep_comp_descriptor* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %155, %struct.usb_ep** %4, align 8
  br label %223

156:                                              ; preds = %147, %142
  br label %196

157:                                              ; preds = %124, %119
  %158 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %159 = call i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %158)
  %160 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %195

162:                                              ; preds = %157
  %163 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %164 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %195, label %166

166:                                              ; preds = %162
  %167 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %168 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  store %struct.usb_ep* %168, %struct.usb_ep** %9, align 8
  %169 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %170 = icmp ne %struct.usb_ep* %169, null
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %173 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %174 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %175 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %176 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %172, %struct.usb_ep* %173, %struct.usb_endpoint_descriptor* %174, %struct.usb_ss_ep_comp_descriptor* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %171
  %179 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %179, %struct.usb_ep** %4, align 8
  br label %223

180:                                              ; preds = %171, %166
  %181 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %182 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %181, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.usb_ep* %182, %struct.usb_ep** %9, align 8
  %183 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %184 = icmp ne %struct.usb_ep* %183, null
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %187 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %188 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %189 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %190 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %186, %struct.usb_ep* %187, %struct.usb_endpoint_descriptor* %188, %struct.usb_ss_ep_comp_descriptor* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %185
  %193 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %193, %struct.usb_ep** %4, align 8
  br label %223

194:                                              ; preds = %185, %180
  br label %195

195:                                              ; preds = %194, %162, %157
  br label %196

196:                                              ; preds = %195, %156
  br label %197

197:                                              ; preds = %196, %118
  br label %198

198:                                              ; preds = %197, %80
  %199 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %200 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %201 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %200)
  %202 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %203 = call i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %202)
  %204 = icmp ne i64 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %207 = call i32 @snprintf(i8* %199, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %201, i8* %206)
  %208 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %209 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %210 = call %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget* %208, i8* %209)
  store %struct.usb_ep* %210, %struct.usb_ep** %9, align 8
  %211 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %212 = icmp ne %struct.usb_ep* %211, null
  br i1 %212, label %213, label %222

213:                                              ; preds = %198
  %214 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %215 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  %216 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %217 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %7, align 8
  %218 = call i64 @usb_gadget_ep_match_desc(%struct.usb_gadget* %214, %struct.usb_ep* %215, %struct.usb_endpoint_descriptor* %216, %struct.usb_ss_ep_comp_descriptor* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load %struct.usb_ep*, %struct.usb_ep** %9, align 8
  store %struct.usb_ep* %221, %struct.usb_ep** %4, align 8
  br label %223

222:                                              ; preds = %213, %198
  store %struct.usb_ep* null, %struct.usb_ep** %4, align 8
  br label %223

223:                                              ; preds = %222, %220, %192, %178, %154, %140, %116, %102, %78, %64, %40, %26
  %224 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  ret %struct.usb_ep* %224
}

declare dso_local i64 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local %struct.usb_ep* @gadget_find_ep_by_name(%struct.usb_gadget*, i8*) #1

declare dso_local i64 @usb_gadget_ep_match_desc(%struct.usb_gadget*, %struct.usb_ep*, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor*) #1

declare dso_local i64 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
