; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_cdc_parse_cdc_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_message.c_cdc_parse_cdc_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cdc_parsed_header = type { i32, %struct.usb_cdc_ether_desc*, %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_header_desc*, %struct.usb_cdc_union_desc*, %struct.usb_cdc_mbim_extended_desc*, %struct.usb_cdc_mbim_desc*, %struct.usb_cdc_ncm_desc*, %struct.usb_cdc_dmm_desc*, %struct.usb_cdc_call_mgmt_descriptor*, %struct.usb_cdc_acm_descriptor*, %struct.usb_cdc_country_functional_desc* }
%struct.usb_cdc_ether_desc = type { i32 }
%struct.usb_cdc_mdlm_desc = type { i32 }
%struct.usb_cdc_mdlm_detail_desc = type { i32 }
%struct.usb_cdc_header_desc = type { i32 }
%struct.usb_cdc_union_desc = type { i32 }
%struct.usb_cdc_mbim_extended_desc = type { i32 }
%struct.usb_cdc_mbim_desc = type { i32 }
%struct.usb_cdc_ncm_desc = type { i32 }
%struct.usb_cdc_dmm_desc = type { i32 }
%struct.usb_cdc_call_mgmt_descriptor = type { i32 }
%struct.usb_cdc_acm_descriptor = type { i32 }
%struct.usb_cdc_country_functional_desc = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"skipping garbage byte\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid descriptor buffer length\0A\00", align 1
@USB_DT_CS_INTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"skipping garbage\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"More than one union descriptor, skipping ...\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Ignoring descriptor: type %02x, length %ud\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header* %0, %struct.usb_interface* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_cdc_parsed_header*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_cdc_union_desc*, align 8
  %11 = alloca %struct.usb_cdc_header_desc*, align 8
  %12 = alloca %struct.usb_cdc_ether_desc*, align 8
  %13 = alloca %struct.usb_cdc_mdlm_detail_desc*, align 8
  %14 = alloca %struct.usb_cdc_mdlm_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.usb_cdc_parsed_header* %0, %struct.usb_cdc_parsed_header** %6, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %10, align 8
  store %struct.usb_cdc_header_desc* null, %struct.usb_cdc_header_desc** %11, align 8
  store %struct.usb_cdc_ether_desc* null, %struct.usb_cdc_ether_desc** %12, align 8
  store %struct.usb_cdc_mdlm_detail_desc* null, %struct.usb_cdc_mdlm_detail_desc** %13, align 8
  store %struct.usb_cdc_mdlm_desc* null, %struct.usb_cdc_mdlm_desc** %14, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %18 = call i32 @memset(%struct.usb_cdc_parsed_header* %17, i32 0, i32 104)
  %19 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %20 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %214, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %222

24:                                               ; preds = %21
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %24
  %31 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %32 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %31, i32 0, i32 0
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %214

34:                                               ; preds = %24
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = icmp ult i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %38, %34
  %42 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %222

45:                                               ; preds = %38
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @USB_DT_CS_INTERFACE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %53 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %214

55:                                               ; preds = %45
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %203 [
    i32 128, label %59
    i32 137, label %74
    i32 134, label %84
    i32 139, label %98
    i32 135, label %108
    i32 138, label %122
    i32 136, label %132
    i32 130, label %142
    i32 131, label %156
    i32 129, label %170
    i32 132, label %180
    i32 133, label %190
    i32 140, label %200
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %214

64:                                               ; preds = %59
  %65 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %10, align 8
  %66 = icmp ne %struct.usb_cdc_union_desc* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %69 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %214

71:                                               ; preds = %64
  %72 = load i32*, i32** %8, align 8
  %73 = bitcast i32* %72 to %struct.usb_cdc_union_desc*
  store %struct.usb_cdc_union_desc* %73, %struct.usb_cdc_union_desc** %10, align 8
  br label %211

74:                                               ; preds = %55
  %75 = load i32, i32* %15, align 4
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %76, 4
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %214

79:                                               ; preds = %74
  %80 = load i32*, i32** %8, align 8
  %81 = bitcast i32* %80 to %struct.usb_cdc_country_functional_desc*
  %82 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %83 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %82, i32 0, i32 12
  store %struct.usb_cdc_country_functional_desc* %81, %struct.usb_cdc_country_functional_desc** %83, align 8
  br label %211

84:                                               ; preds = %55
  %85 = load i32, i32* %15, align 4
  %86 = zext i32 %85 to i64
  %87 = icmp ne i64 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %214

89:                                               ; preds = %84
  %90 = load %struct.usb_cdc_header_desc*, %struct.usb_cdc_header_desc** %11, align 8
  %91 = icmp ne %struct.usb_cdc_header_desc* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %5, align 4
  br label %239

95:                                               ; preds = %89
  %96 = load i32*, i32** %8, align 8
  %97 = bitcast i32* %96 to %struct.usb_cdc_header_desc*
  store %struct.usb_cdc_header_desc* %97, %struct.usb_cdc_header_desc** %11, align 8
  br label %211

98:                                               ; preds = %55
  %99 = load i32, i32* %15, align 4
  %100 = zext i32 %99 to i64
  %101 = icmp ult i64 %100, 4
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %214

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = bitcast i32* %104 to %struct.usb_cdc_acm_descriptor*
  %106 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %107 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %106, i32 0, i32 11
  store %struct.usb_cdc_acm_descriptor* %105, %struct.usb_cdc_acm_descriptor** %107, align 8
  br label %211

108:                                              ; preds = %55
  %109 = load i32, i32* %15, align 4
  %110 = zext i32 %109 to i64
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %214

113:                                              ; preds = %108
  %114 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %12, align 8
  %115 = icmp ne %struct.usb_cdc_ether_desc* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %239

119:                                              ; preds = %113
  %120 = load i32*, i32** %8, align 8
  %121 = bitcast i32* %120 to %struct.usb_cdc_ether_desc*
  store %struct.usb_cdc_ether_desc* %121, %struct.usb_cdc_ether_desc** %12, align 8
  br label %211

122:                                              ; preds = %55
  %123 = load i32, i32* %15, align 4
  %124 = zext i32 %123 to i64
  %125 = icmp ult i64 %124, 4
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %214

127:                                              ; preds = %122
  %128 = load i32*, i32** %8, align 8
  %129 = bitcast i32* %128 to %struct.usb_cdc_call_mgmt_descriptor*
  %130 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %131 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %130, i32 0, i32 10
  store %struct.usb_cdc_call_mgmt_descriptor* %129, %struct.usb_cdc_call_mgmt_descriptor** %131, align 8
  br label %211

132:                                              ; preds = %55
  %133 = load i32, i32* %15, align 4
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %134, 4
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %214

137:                                              ; preds = %132
  %138 = load i32*, i32** %8, align 8
  %139 = bitcast i32* %138 to %struct.usb_cdc_dmm_desc*
  %140 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %141 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %140, i32 0, i32 9
  store %struct.usb_cdc_dmm_desc* %139, %struct.usb_cdc_dmm_desc** %141, align 8
  br label %211

142:                                              ; preds = %55
  %143 = load i32, i32* %15, align 4
  %144 = zext i32 %143 to i64
  %145 = icmp ult i64 %144, 4
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %214

147:                                              ; preds = %142
  %148 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %14, align 8
  %149 = icmp ne %struct.usb_cdc_mdlm_desc* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %5, align 4
  br label %239

153:                                              ; preds = %147
  %154 = load i32*, i32** %8, align 8
  %155 = bitcast i32* %154 to %struct.usb_cdc_mdlm_desc*
  store %struct.usb_cdc_mdlm_desc* %155, %struct.usb_cdc_mdlm_desc** %14, align 8
  br label %211

156:                                              ; preds = %55
  %157 = load i32, i32* %15, align 4
  %158 = zext i32 %157 to i64
  %159 = icmp ult i64 %158, 4
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %214

161:                                              ; preds = %156
  %162 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %13, align 8
  %163 = icmp ne %struct.usb_cdc_mdlm_detail_desc* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %5, align 4
  br label %239

167:                                              ; preds = %161
  %168 = load i32*, i32** %8, align 8
  %169 = bitcast i32* %168 to %struct.usb_cdc_mdlm_detail_desc*
  store %struct.usb_cdc_mdlm_detail_desc* %169, %struct.usb_cdc_mdlm_detail_desc** %13, align 8
  br label %211

170:                                              ; preds = %55
  %171 = load i32, i32* %15, align 4
  %172 = zext i32 %171 to i64
  %173 = icmp ult i64 %172, 4
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %214

175:                                              ; preds = %170
  %176 = load i32*, i32** %8, align 8
  %177 = bitcast i32* %176 to %struct.usb_cdc_ncm_desc*
  %178 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %179 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %178, i32 0, i32 8
  store %struct.usb_cdc_ncm_desc* %177, %struct.usb_cdc_ncm_desc** %179, align 8
  br label %211

180:                                              ; preds = %55
  %181 = load i32, i32* %15, align 4
  %182 = zext i32 %181 to i64
  %183 = icmp ult i64 %182, 4
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %214

185:                                              ; preds = %180
  %186 = load i32*, i32** %8, align 8
  %187 = bitcast i32* %186 to %struct.usb_cdc_mbim_desc*
  %188 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %189 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %188, i32 0, i32 7
  store %struct.usb_cdc_mbim_desc* %187, %struct.usb_cdc_mbim_desc** %189, align 8
  br label %211

190:                                              ; preds = %55
  %191 = load i32, i32* %15, align 4
  %192 = zext i32 %191 to i64
  %193 = icmp ult i64 %192, 4
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %211

195:                                              ; preds = %190
  %196 = load i32*, i32** %8, align 8
  %197 = bitcast i32* %196 to %struct.usb_cdc_mbim_extended_desc*
  %198 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %199 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %198, i32 0, i32 6
  store %struct.usb_cdc_mbim_extended_desc* %197, %struct.usb_cdc_mbim_extended_desc** %199, align 8
  br label %211

200:                                              ; preds = %55
  %201 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %202 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %201, i32 0, i32 0
  store i32 1, i32* %202, align 8
  br label %211

203:                                              ; preds = %55
  %204 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %205 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %204, i32 0, i32 0
  %206 = load i32*, i32** %8, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @dev_dbg(i32* %205, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %208, i32 %209)
  br label %214

211:                                              ; preds = %200, %195, %194, %185, %175, %167, %153, %137, %127, %119, %103, %95, %79, %71
  %212 = load i32, i32* %16, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %16, align 4
  br label %214

214:                                              ; preds = %211, %203, %184, %174, %160, %146, %136, %126, %112, %102, %88, %78, %67, %63, %51, %30
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %9, align 4
  %217 = sub i32 %216, %215
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = zext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  store i32* %221, i32** %8, align 8
  br label %21

222:                                              ; preds = %41, %21
  %223 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %10, align 8
  %224 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %225 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %224, i32 0, i32 5
  store %struct.usb_cdc_union_desc* %223, %struct.usb_cdc_union_desc** %225, align 8
  %226 = load %struct.usb_cdc_header_desc*, %struct.usb_cdc_header_desc** %11, align 8
  %227 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %228 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %227, i32 0, i32 4
  store %struct.usb_cdc_header_desc* %226, %struct.usb_cdc_header_desc** %228, align 8
  %229 = load %struct.usb_cdc_mdlm_detail_desc*, %struct.usb_cdc_mdlm_detail_desc** %13, align 8
  %230 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %231 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %230, i32 0, i32 3
  store %struct.usb_cdc_mdlm_detail_desc* %229, %struct.usb_cdc_mdlm_detail_desc** %231, align 8
  %232 = load %struct.usb_cdc_mdlm_desc*, %struct.usb_cdc_mdlm_desc** %14, align 8
  %233 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %234 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %233, i32 0, i32 2
  store %struct.usb_cdc_mdlm_desc* %232, %struct.usb_cdc_mdlm_desc** %234, align 8
  %235 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %12, align 8
  %236 = load %struct.usb_cdc_parsed_header*, %struct.usb_cdc_parsed_header** %6, align 8
  %237 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %236, i32 0, i32 1
  store %struct.usb_cdc_ether_desc* %235, %struct.usb_cdc_ether_desc** %237, align 8
  %238 = load i32, i32* %16, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %222, %164, %150, %116, %92
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @memset(%struct.usb_cdc_parsed_header*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
