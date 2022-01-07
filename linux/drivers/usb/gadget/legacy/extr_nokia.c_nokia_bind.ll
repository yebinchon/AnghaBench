; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_nokia.c_nokia_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.usb_composite_dev = type { %struct.usb_gadget* }
%struct.usb_gadget = type { i32 }
%struct.fsg_opts = type { i32, i32 }
%struct.fsg_config = type { i8*, i8*, i32 }

@strings_dev = common dso_local global %struct.TYPE_7__* null, align 8
@USB_GADGET_MANUFACTURER_IDX = common dso_local global i64 0, align 8
@device_desc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@USB_GADGET_PRODUCT_IDX = common dso_local global i64 0, align 8
@STRING_DESCRIPTION_IDX = common dso_local global i64 0, align 8
@nokia_config_500ma_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@nokia_config_100ma_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"phonet\00", align 1
@fi_phonet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not find phonet function\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"obex\00", align 1
@fi_obex1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"could not find obex function 1\0A\00", align 1
@fi_obex2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"could not find obex function 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"acm\00", align 1
@fi_acm = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"ecm\00", align 1
@fi_ecm = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"mass_storage\00", align 1
@fi_msg = common dso_local global i32 0, align 4
@fsg_mod_data = common dso_local global i32 0, align 4
@fsg_num_buffers = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"Nokia\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"N900\00", align 1
@nokia_bind_config = common dso_local global i32 0, align 4
@coverwrite = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@NOKIA_LONG_NAME = common dso_local global i32 0, align 4
@f_acm_cfg1 = common dso_local global i32 0, align 4
@f_obex1_cfg1 = common dso_local global i32 0, align 4
@f_obex2_cfg1 = common dso_local global i32 0, align 4
@f_phonet_cfg1 = common dso_local global i32 0, align 4
@f_ecm_cfg1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_composite_dev*)* @nokia_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nokia_bind(%struct.usb_composite_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_composite_dev*, align 8
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca %struct.fsg_opts*, align 8
  %6 = alloca %struct.fsg_config, align 8
  %7 = alloca i32, align 4
  store %struct.usb_composite_dev* %0, %struct.usb_composite_dev** %3, align 8
  %8 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %9 = getelementptr inbounds %struct.usb_composite_dev, %struct.usb_composite_dev* %8, i32 0, i32 0
  %10 = load %struct.usb_gadget*, %struct.usb_gadget** %9, align 8
  store %struct.usb_gadget* %10, %struct.usb_gadget** %4, align 8
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** @strings_dev, align 8
  %13 = call i32 @usb_string_ids_tab(%struct.usb_composite_dev* %11, %struct.TYPE_7__* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %222

17:                                               ; preds = %1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @strings_dev, align 8
  %19 = load i64, i64* @USB_GADGET_MANUFACTURER_IDX, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @device_desc, i32 0, i32 0), align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @strings_dev, align 8
  %24 = load i64, i64* @USB_GADGET_PRODUCT_IDX, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @device_desc, i32 0, i32 1), align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @strings_dev, align 8
  %29 = load i64, i64* @STRING_DESCRIPTION_IDX, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nokia_config_500ma_driver, i32 0, i32 0), align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @nokia_config_100ma_driver, i32 0, i32 0), align 4
  %35 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %36 = call i32 @gadget_is_altset_supported(%struct.usb_gadget* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %17
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %222

41:                                               ; preds = %17
  %42 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* @fi_phonet, align 4
  %43 = load i32, i32* @fi_phonet, align 4
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %49, i32* @fi_obex1, align 4
  %50 = load i32, i32* @fi_obex1, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* @fi_obex2, align 4
  %57 = load i32, i32* @fi_obex2, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %55
  %63 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %63, i32* @fi_acm, align 4
  %64 = load i32, i32* @fi_acm, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @fi_acm, align 4
  %69 = call i32 @PTR_ERR(i32 %68)
  store i32 %69, i32* %7, align 4
  br label %200

70:                                               ; preds = %62
  %71 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 %71, i32* @fi_ecm, align 4
  %72 = load i32, i32* @fi_ecm, align 4
  %73 = call i64 @IS_ERR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @fi_ecm, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %7, align 4
  br label %197

78:                                               ; preds = %70
  %79 = call i32 @usb_get_function_instance(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  store i32 %79, i32* @fi_msg, align 4
  %80 = load i32, i32* @fi_msg, align 4
  %81 = call i64 @IS_ERR(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @fi_msg, align 4
  %85 = call i32 @PTR_ERR(i32 %84)
  store i32 %85, i32* %7, align 4
  br label %194

86:                                               ; preds = %78
  %87 = load i32, i32* @fsg_num_buffers, align 4
  %88 = call i32 @fsg_config_from_params(%struct.fsg_config* %6, i32* @fsg_mod_data, i32 %87)
  %89 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %89, align 8
  %90 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %90, align 8
  %91 = load i32, i32* @fi_msg, align 4
  %92 = call %struct.fsg_opts* @fsg_opts_from_func_inst(i32 %91)
  store %struct.fsg_opts* %92, %struct.fsg_opts** %5, align 8
  %93 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %94 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  %95 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %96 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @fsg_num_buffers, align 4
  %99 = call i32 @fsg_common_set_num_buffers(i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %191

103:                                              ; preds = %86
  %104 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %105 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %108 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %6, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @fsg_common_set_cdev(i32 %106, %struct.usb_composite_dev* %107, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %186

114:                                              ; preds = %103
  %115 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %116 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fsg_common_set_sysfs(i32 %117, i32 1)
  %119 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %120 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @fsg_common_create_luns(i32 %121, %struct.fsg_config* %6)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %114
  br label %186

126:                                              ; preds = %114
  %127 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %128 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %6, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds %struct.fsg_config, %struct.fsg_config* %6, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @fsg_common_set_inquiry_string(i32 %129, i8* %131, i8* %133)
  %135 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %136 = load i32, i32* @nokia_bind_config, align 4
  %137 = call i32 @usb_add_config(%struct.usb_composite_dev* %135, %struct.TYPE_8__* @nokia_config_500ma_driver, i32 %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %126
  br label %181

141:                                              ; preds = %126
  %142 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %143 = load i32, i32* @nokia_bind_config, align 4
  %144 = call i32 @usb_add_config(%struct.usb_composite_dev* %142, %struct.TYPE_8__* @nokia_config_100ma_driver, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  br label %155

148:                                              ; preds = %141
  %149 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %3, align 8
  %150 = call i32 @usb_composite_overwrite_options(%struct.usb_composite_dev* %149, i32* @coverwrite)
  %151 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %152 = getelementptr inbounds %struct.usb_gadget, %struct.usb_gadget* %151, i32 0, i32 0
  %153 = load i32, i32* @NOKIA_LONG_NAME, align 4
  %154 = call i32 @dev_info(i32* %152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %153)
  store i32 0, i32* %2, align 4
  br label %224

155:                                              ; preds = %147
  %156 = load i32, i32* @f_acm_cfg1, align 4
  %157 = call i32 @usb_put_function(i32 %156)
  %158 = load i32, i32* @f_obex1_cfg1, align 4
  %159 = call i32 @IS_ERR_OR_NULL(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %155
  %162 = load i32, i32* @f_obex1_cfg1, align 4
  %163 = call i32 @usb_put_function(i32 %162)
  br label %164

164:                                              ; preds = %161, %155
  %165 = load i32, i32* @f_obex2_cfg1, align 4
  %166 = call i32 @IS_ERR_OR_NULL(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* @f_obex2_cfg1, align 4
  %170 = call i32 @usb_put_function(i32 %169)
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* @f_phonet_cfg1, align 4
  %173 = call i32 @IS_ERR_OR_NULL(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %171
  %176 = load i32, i32* @f_phonet_cfg1, align 4
  %177 = call i32 @usb_put_function(i32 %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32, i32* @f_ecm_cfg1, align 4
  %180 = call i32 @usb_put_function(i32 %179)
  br label %181

181:                                              ; preds = %178, %140
  %182 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %183 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @fsg_common_remove_luns(i32 %184)
  br label %186

186:                                              ; preds = %181, %125, %113
  %187 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %188 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @fsg_common_free_buffers(i32 %189)
  br label %191

191:                                              ; preds = %186, %102
  %192 = load i32, i32* @fi_msg, align 4
  %193 = call i32 @usb_put_function_instance(i32 %192)
  br label %194

194:                                              ; preds = %191, %83
  %195 = load i32, i32* @fi_ecm, align 4
  %196 = call i32 @usb_put_function_instance(i32 %195)
  br label %197

197:                                              ; preds = %194, %75
  %198 = load i32, i32* @fi_acm, align 4
  %199 = call i32 @usb_put_function_instance(i32 %198)
  br label %200

200:                                              ; preds = %197, %67
  %201 = load i32, i32* @fi_obex2, align 4
  %202 = call i64 @IS_ERR(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* @fi_obex2, align 4
  %206 = call i32 @usb_put_function_instance(i32 %205)
  br label %207

207:                                              ; preds = %204, %200
  %208 = load i32, i32* @fi_obex1, align 4
  %209 = call i64 @IS_ERR(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = load i32, i32* @fi_obex1, align 4
  %213 = call i32 @usb_put_function_instance(i32 %212)
  br label %214

214:                                              ; preds = %211, %207
  %215 = load i32, i32* @fi_phonet, align 4
  %216 = call i64 @IS_ERR(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* @fi_phonet, align 4
  %220 = call i32 @usb_put_function_instance(i32 %219)
  br label %221

221:                                              ; preds = %218, %214
  br label %222

222:                                              ; preds = %221, %38, %16
  %223 = load i32, i32* %7, align 4
  store i32 %223, i32* %2, align 4
  br label %224

224:                                              ; preds = %222, %148
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @usb_string_ids_tab(%struct.usb_composite_dev*, %struct.TYPE_7__*) #1

declare dso_local i32 @gadget_is_altset_supported(%struct.usb_gadget*) #1

declare dso_local i32 @usb_get_function_instance(i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @fsg_config_from_params(%struct.fsg_config*, i32*, i32) #1

declare dso_local %struct.fsg_opts* @fsg_opts_from_func_inst(i32) #1

declare dso_local i32 @fsg_common_set_num_buffers(i32, i32) #1

declare dso_local i32 @fsg_common_set_cdev(i32, %struct.usb_composite_dev*, i32) #1

declare dso_local i32 @fsg_common_set_sysfs(i32, i32) #1

declare dso_local i32 @fsg_common_create_luns(i32, %struct.fsg_config*) #1

declare dso_local i32 @fsg_common_set_inquiry_string(i32, i8*, i8*) #1

declare dso_local i32 @usb_add_config(%struct.usb_composite_dev*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @usb_composite_overwrite_options(%struct.usb_composite_dev*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @usb_put_function(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @fsg_common_remove_luns(i32) #1

declare dso_local i32 @fsg_common_free_buffers(i32) #1

declare dso_local i32 @usb_put_function_instance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
