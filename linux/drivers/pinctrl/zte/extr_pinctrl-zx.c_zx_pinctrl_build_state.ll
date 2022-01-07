; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pinctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/zte/extr_pinctrl-zx.c_zx_pinctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.zx_pinctrl = type { %struct.pinctrl_dev*, %struct.zx_pinctrl_soc_info* }
%struct.pinctrl_dev = type { i32, i32, i32, i32 }
%struct.zx_pinctrl_soc_info = type { i32, %struct.pinctrl_pin_desc* }
%struct.pinctrl_pin_desc = type { i8*, %struct.zx_pin_data*, i32 }
%struct.zx_pin_data = type { %struct.zx_mux_desc* }
%struct.zx_mux_desc = type { i8* }
%struct.function_desc = type { i8*, i32*, i32, i32, i8** }
%struct.group_desc = type { i8*, i32*, i32, i32, i8** }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zx_pinctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pinctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.zx_pinctrl*, align 8
  %5 = alloca %struct.zx_pinctrl_soc_info*, align 8
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.function_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.group_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pinctrl_pin_desc*, align 8
  %13 = alloca %struct.group_desc*, align 8
  %14 = alloca %struct.pinctrl_pin_desc*, align 8
  %15 = alloca %struct.zx_pin_data*, align 8
  %16 = alloca %struct.zx_mux_desc*, align 8
  %17 = alloca %struct.function_desc*, align 8
  %18 = alloca %struct.pinctrl_pin_desc*, align 8
  %19 = alloca %struct.zx_pin_data*, align 8
  %20 = alloca %struct.zx_mux_desc*, align 8
  %21 = alloca %struct.function_desc*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call %struct.zx_pinctrl* @platform_get_drvdata(%struct.platform_device* %24)
  store %struct.zx_pinctrl* %25, %struct.zx_pinctrl** %4, align 8
  %26 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %4, align 8
  %27 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %26, i32 0, i32 1
  %28 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %27, align 8
  store %struct.zx_pinctrl_soc_info* %28, %struct.zx_pinctrl_soc_info** %5, align 8
  %29 = load %struct.zx_pinctrl*, %struct.zx_pinctrl** %4, align 8
  %30 = getelementptr inbounds %struct.zx_pinctrl, %struct.zx_pinctrl* %29, i32 0, i32 0
  %31 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %30, align 8
  store %struct.pinctrl_dev* %31, %struct.pinctrl_dev** %6, align 8
  %32 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %33 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %10, align 4
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kcalloc(i32* %36, i32 %37, i32 32, i32 %38)
  %40 = bitcast i8* %39 to %struct.group_desc*
  store %struct.group_desc* %40, %struct.group_desc** %9, align 8
  %41 = load %struct.group_desc*, %struct.group_desc** %9, align 8
  %42 = icmp ne %struct.group_desc* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %1
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %293

46:                                               ; preds = %1
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %78, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %47
  %52 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %53 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %52, i32 0, i32 1
  %54 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %54, i64 %56
  store %struct.pinctrl_pin_desc* %57, %struct.pinctrl_pin_desc** %12, align 8
  %58 = load %struct.group_desc*, %struct.group_desc** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %58, i64 %60
  store %struct.group_desc* %61, %struct.group_desc** %13, align 8
  %62 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %12, align 8
  %63 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.group_desc*, %struct.group_desc** %13, align 8
  %66 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %12, align 8
  %68 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %67, i32 0, i32 2
  %69 = load %struct.group_desc*, %struct.group_desc** %13, align 8
  %70 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.group_desc*, %struct.group_desc** %13, align 8
  %72 = getelementptr inbounds %struct.group_desc, %struct.group_desc* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %74 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %73, i32 0, i32 3
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.group_desc*, %struct.group_desc** %13, align 8
  %77 = call i32 @radix_tree_insert(i32* %74, i32 %75, %struct.group_desc* %76)
  br label %78

78:                                               ; preds = %51
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %47

81:                                               ; preds = %47
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %84 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %86 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.group_desc* @kcalloc(i32 %87, i32 32, i32 %88)
  %90 = bitcast %struct.group_desc* %89 to %struct.function_desc*
  store %struct.function_desc* %90, %struct.function_desc** %7, align 8
  %91 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  %92 = icmp ne %struct.function_desc* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %293

96:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %173, %96
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %100 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %176

103:                                              ; preds = %97
  %104 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %105 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %104, i32 0, i32 1
  %106 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %106, i64 %108
  store %struct.pinctrl_pin_desc* %109, %struct.pinctrl_pin_desc** %14, align 8
  %110 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %14, align 8
  %111 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %110, i32 0, i32 1
  %112 = load %struct.zx_pin_data*, %struct.zx_pin_data** %111, align 8
  store %struct.zx_pin_data* %112, %struct.zx_pin_data** %15, align 8
  %113 = load %struct.zx_pin_data*, %struct.zx_pin_data** %15, align 8
  %114 = icmp ne %struct.zx_pin_data* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %103
  br label %173

116:                                              ; preds = %103
  %117 = load %struct.zx_pin_data*, %struct.zx_pin_data** %15, align 8
  %118 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %117, i32 0, i32 0
  %119 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %118, align 8
  store %struct.zx_mux_desc* %119, %struct.zx_mux_desc** %16, align 8
  br label %120

120:                                              ; preds = %169, %116
  %121 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %16, align 8
  %122 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %172

125:                                              ; preds = %120
  %126 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  store %struct.function_desc* %126, %struct.function_desc** %17, align 8
  br label %127

127:                                              ; preds = %146, %125
  %128 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %129 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %149

132:                                              ; preds = %127
  %133 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %16, align 8
  %134 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %137 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %135, i8* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %143 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %149

146:                                              ; preds = %132
  %147 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %148 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %147, i32 1
  store %struct.function_desc* %148, %struct.function_desc** %17, align 8
  br label %127

149:                                              ; preds = %141, %127
  %150 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %151 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %169, label %154

154:                                              ; preds = %149
  %155 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %16, align 8
  %156 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %159 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %161 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %160, i32 0, i32 3
  store i32 1, i32* %161, align 4
  %162 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %163 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %162, i32 0, i32 2
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  %166 = load %struct.function_desc*, %struct.function_desc** %17, align 8
  %167 = bitcast %struct.function_desc* %166 to %struct.group_desc*
  %168 = call i32 @radix_tree_insert(i32* %163, i32 %164, %struct.group_desc* %167)
  br label %169

169:                                              ; preds = %154, %149
  %170 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %16, align 8
  %171 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %170, i32 1
  store %struct.zx_mux_desc* %171, %struct.zx_mux_desc** %16, align 8
  br label %120

172:                                              ; preds = %120
  br label %173

173:                                              ; preds = %172, %115
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  br label %97

176:                                              ; preds = %97
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %179 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  %181 = bitcast %struct.function_desc* %180 to %struct.group_desc*
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 32
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @GFP_KERNEL, align 4
  %187 = call %struct.group_desc* @krealloc(%struct.group_desc* %181, i32 %185, i32 %186)
  %188 = bitcast %struct.group_desc* %187 to %struct.function_desc*
  store %struct.function_desc* %188, %struct.function_desc** %7, align 8
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %289, %176
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %192 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %195, label %292

195:                                              ; preds = %189
  %196 = load %struct.zx_pinctrl_soc_info*, %struct.zx_pinctrl_soc_info** %5, align 8
  %197 = getelementptr inbounds %struct.zx_pinctrl_soc_info, %struct.zx_pinctrl_soc_info* %196, i32 0, i32 1
  %198 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %197, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %198, i64 %200
  store %struct.pinctrl_pin_desc* %201, %struct.pinctrl_pin_desc** %18, align 8
  %202 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %18, align 8
  %203 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %202, i32 0, i32 1
  %204 = load %struct.zx_pin_data*, %struct.zx_pin_data** %203, align 8
  store %struct.zx_pin_data* %204, %struct.zx_pin_data** %19, align 8
  %205 = load %struct.zx_pin_data*, %struct.zx_pin_data** %19, align 8
  %206 = icmp ne %struct.zx_pin_data* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %195
  br label %289

208:                                              ; preds = %195
  %209 = load %struct.zx_pin_data*, %struct.zx_pin_data** %19, align 8
  %210 = getelementptr inbounds %struct.zx_pin_data, %struct.zx_pin_data* %209, i32 0, i32 0
  %211 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %210, align 8
  store %struct.zx_mux_desc* %211, %struct.zx_mux_desc** %20, align 8
  br label %212

212:                                              ; preds = %281, %208
  %213 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %20, align 8
  %214 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %288

217:                                              ; preds = %212
  store i32 0, i32* %23, align 4
  br label %218

218:                                              ; preds = %236, %217
  %219 = load i32, i32* %23, align 4
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %218
  %223 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  %224 = load i32, i32* %23, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %223, i64 %225
  %227 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %20, align 8
  %230 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @strcmp(i8* %228, i8* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %239

235:                                              ; preds = %222
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %23, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %23, align 4
  br label %218

239:                                              ; preds = %234, %218
  %240 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %240, i64 %242
  store %struct.function_desc* %243, %struct.function_desc** %21, align 8
  %244 = load %struct.function_desc*, %struct.function_desc** %21, align 8
  %245 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %244, i32 0, i32 4
  %246 = load i8**, i8*** %245, align 8
  %247 = icmp ne i8** %246, null
  br i1 %247, label %270, label %248

248:                                              ; preds = %239
  %249 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %250 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %249, i32 0, i32 0
  %251 = load %struct.function_desc*, %struct.function_desc** %21, align 8
  %252 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @GFP_KERNEL, align 4
  %255 = call i8* @devm_kcalloc(i32* %250, i32 %253, i32 8, i32 %254)
  %256 = bitcast i8* %255 to i8**
  %257 = load %struct.function_desc*, %struct.function_desc** %21, align 8
  %258 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %257, i32 0, i32 4
  store i8** %256, i8*** %258, align 8
  %259 = load %struct.function_desc*, %struct.function_desc** %21, align 8
  %260 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %259, i32 0, i32 4
  %261 = load i8**, i8*** %260, align 8
  %262 = icmp ne i8** %261, null
  br i1 %262, label %269, label %263

263:                                              ; preds = %248
  %264 = load %struct.function_desc*, %struct.function_desc** %7, align 8
  %265 = bitcast %struct.function_desc* %264 to %struct.group_desc*
  %266 = call i32 @kfree(%struct.group_desc* %265)
  %267 = load i32, i32* @ENOMEM, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %2, align 4
  br label %293

269:                                              ; preds = %248
  br label %270

270:                                              ; preds = %269, %239
  %271 = load %struct.function_desc*, %struct.function_desc** %21, align 8
  %272 = getelementptr inbounds %struct.function_desc, %struct.function_desc* %271, i32 0, i32 4
  %273 = load i8**, i8*** %272, align 8
  store i8** %273, i8*** %22, align 8
  br label %274

274:                                              ; preds = %278, %270
  %275 = load i8**, i8*** %22, align 8
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %274
  %279 = load i8**, i8*** %22, align 8
  %280 = getelementptr inbounds i8*, i8** %279, i32 1
  store i8** %280, i8*** %22, align 8
  br label %274

281:                                              ; preds = %274
  %282 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %18, align 8
  %283 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i8**, i8*** %22, align 8
  store i8* %284, i8** %285, align 8
  %286 = load %struct.zx_mux_desc*, %struct.zx_mux_desc** %20, align 8
  %287 = getelementptr inbounds %struct.zx_mux_desc, %struct.zx_mux_desc* %286, i32 1
  store %struct.zx_mux_desc* %287, %struct.zx_mux_desc** %20, align 8
  br label %212

288:                                              ; preds = %212
  br label %289

289:                                              ; preds = %288, %207
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %189

292:                                              ; preds = %189
  store i32 0, i32* %2, align 4
  br label %293

293:                                              ; preds = %292, %263, %93, %43
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local %struct.zx_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, %struct.group_desc*) #1

declare dso_local %struct.group_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.group_desc* @krealloc(%struct.group_desc*, i32, i32) #1

declare dso_local i32 @kfree(%struct.group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
