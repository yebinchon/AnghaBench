; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_shd_ops_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_shd_ops_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_abi_shd_intra_frame_operations_data = type { %struct.imgu_abi_shd_transfer_luts_set_data*, %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_operation* }
%struct.imgu_abi_shd_transfer_luts_set_data = type { i8 }
%struct.imgu_abi_acc_process_lines_cmd_data = type { i32, i8 }
%struct.imgu_abi_acc_operation = type { i8*, i32 }
%struct.ipu3_uapi_shd_grid_config = type { i32, i32, i64 }

@IMGU_ABI_SHD_MAX_OPERATIONS = common dso_local global i32 0, align 4
@IMGU_ABI_SHD_MAX_TRANSFERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OPTYPE_TRANSFER_DATA = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OP_IDLE = common dso_local global i8* null, align 8
@IMGU_SHD_SETS = common dso_local global i8 0, align 1
@IMGU_ABI_SHD_MAX_PROCESS_LINES = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OPTYPE_PROCESS_LINES = common dso_local global i32 0, align 4
@IMGU_ABI_ACC_OP_END_OF_OPS = common dso_local global i8* null, align 8
@IMGU_ABI_ACC_OP_END_OF_ACK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imgu_abi_shd_intra_frame_operations_data*, %struct.ipu3_uapi_shd_grid_config*, i32)* @imgu_css_shd_ops_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgu_css_shd_ops_calc(%struct.imgu_abi_shd_intra_frame_operations_data* %0, %struct.ipu3_uapi_shd_grid_config* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_abi_shd_intra_frame_operations_data*, align 8
  %6 = alloca %struct.ipu3_uapi_shd_grid_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.imgu_abi_acc_operation*, align 8
  %16 = alloca %struct.imgu_abi_acc_process_lines_cmd_data*, align 8
  %17 = alloca %struct.imgu_abi_shd_transfer_luts_set_data*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.imgu_abi_shd_intra_frame_operations_data* %0, %struct.imgu_abi_shd_intra_frame_operations_data** %5, align 8
  store %struct.ipu3_uapi_shd_grid_config* %1, %struct.ipu3_uapi_shd_grid_config** %6, align 8
  store i32 %2, i32* %7, align 4
  %26 = load %struct.ipu3_uapi_shd_grid_config*, %struct.ipu3_uapi_shd_grid_config** %6, align 8
  %27 = getelementptr inbounds %struct.ipu3_uapi_shd_grid_config, %struct.ipu3_uapi_shd_grid_config* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 1, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ipu3_uapi_shd_grid_config*, %struct.ipu3_uapi_shd_grid_config** %6, align 8
  %31 = getelementptr inbounds %struct.ipu3_uapi_shd_grid_config, %struct.ipu3_uapi_shd_grid_config* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = mul i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.ipu3_uapi_shd_grid_config*, %struct.ipu3_uapi_shd_grid_config** %6, align 8
  %37 = getelementptr inbounds %struct.ipu3_uapi_shd_grid_config, %struct.ipu3_uapi_shd_grid_config* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 0, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = urem i32 %42, %43
  %45 = sub i32 %41, %44
  store i32 %45, i32* %12, align 4
  store i8 0, i8* %23, align 1
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %86

49:                                               ; preds = %3
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = urem i32 %52, %53
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub i32 %58, %59
  %61 = load i32, i32* %10, align 4
  %62 = udiv i32 %60, %61
  %63 = add i32 %62, 2
  br label %71

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sub i32 %65, %66
  %68 = load i32, i32* %10, align 4
  %69 = udiv i32 %67, %68
  %70 = add i32 %69, 1
  br label %71

71:                                               ; preds = %64, %57
  %72 = phi i32 [ %63, %57 ], [ %70, %64 ]
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = sub i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp ule i32 %75, %76
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 0
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i1 [ true, %71 ], [ %80, %78 ]
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %23, align 1
  br label %96

86:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %7, align 4
  %90 = sub i32 %88, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp ule i32 %90, %91
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = trunc i32 %94 to i8
  store i8 %95, i8* %23, align 1
  br label %96

96:                                               ; preds = %86, %81
  %97 = load %struct.imgu_abi_shd_intra_frame_operations_data*, %struct.imgu_abi_shd_intra_frame_operations_data** %5, align 8
  %98 = getelementptr inbounds %struct.imgu_abi_shd_intra_frame_operations_data, %struct.imgu_abi_shd_intra_frame_operations_data* %97, i32 0, i32 2
  %99 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %98, align 8
  store %struct.imgu_abi_acc_operation* %99, %struct.imgu_abi_acc_operation** %15, align 8
  store i32 0, i32* %18, align 4
  %100 = load %struct.imgu_abi_shd_intra_frame_operations_data*, %struct.imgu_abi_shd_intra_frame_operations_data** %5, align 8
  %101 = getelementptr inbounds %struct.imgu_abi_shd_intra_frame_operations_data, %struct.imgu_abi_shd_intra_frame_operations_data* %100, i32 0, i32 1
  %102 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %101, align 8
  store %struct.imgu_abi_acc_process_lines_cmd_data* %102, %struct.imgu_abi_acc_process_lines_cmd_data** %16, align 8
  store i32 0, i32* %19, align 4
  %103 = load %struct.imgu_abi_shd_intra_frame_operations_data*, %struct.imgu_abi_shd_intra_frame_operations_data** %5, align 8
  %104 = getelementptr inbounds %struct.imgu_abi_shd_intra_frame_operations_data, %struct.imgu_abi_shd_intra_frame_operations_data* %103, i32 0, i32 0
  %105 = load %struct.imgu_abi_shd_transfer_luts_set_data*, %struct.imgu_abi_shd_transfer_luts_set_data** %104, align 8
  store %struct.imgu_abi_shd_transfer_luts_set_data* %105, %struct.imgu_abi_shd_transfer_luts_set_data** %17, align 8
  store i32 0, i32* %20, align 4
  %106 = load %struct.imgu_abi_shd_intra_frame_operations_data*, %struct.imgu_abi_shd_intra_frame_operations_data** %5, align 8
  %107 = call i32 @memset(%struct.imgu_abi_shd_intra_frame_operations_data* %106, i32 0, i32 24)
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  br label %108

108:                                              ; preds = %294, %96
  %109 = load i32, i32* %24, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %25, align 4
  %113 = icmp ne i32 %112, 0
  br label %114

114:                                              ; preds = %111, %108
  %115 = phi i1 [ true, %108 ], [ %113, %111 ]
  br i1 %115, label %116, label %295

116:                                              ; preds = %114
  %117 = load i32, i32* %25, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @IMGU_ABI_SHD_MAX_OPERATIONS, align 4
  %122 = icmp uge i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @IMGU_ABI_SHD_MAX_TRANSFERS, align 4
  %126 = icmp uge i32 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123, %119
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %296

130:                                              ; preds = %123
  %131 = load i32, i32* @IMGU_ABI_ACC_OPTYPE_TRANSFER_DATA, align 4
  %132 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %133 = load i32, i32* %18, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %132, i64 %134
  %136 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %135, i32 0, i32 1
  store i32 %131, i32* %136, align 8
  %137 = load i8*, i8** @IMGU_ABI_ACC_OP_IDLE, align 8
  %138 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %139 = load i32, i32* %18, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %138, i64 %140
  %142 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %141, i32 0, i32 0
  store i8* %137, i8** %142, align 8
  %143 = load i32, i32* %18, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %18, align 4
  %145 = load i8, i8* %21, align 1
  %146 = load %struct.imgu_abi_shd_transfer_luts_set_data*, %struct.imgu_abi_shd_transfer_luts_set_data** %17, align 8
  %147 = load i32, i32* %20, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.imgu_abi_shd_transfer_luts_set_data, %struct.imgu_abi_shd_transfer_luts_set_data* %146, i64 %148
  %150 = getelementptr inbounds %struct.imgu_abi_shd_transfer_luts_set_data, %struct.imgu_abi_shd_transfer_luts_set_data* %149, i32 0, i32 0
  store i8 %145, i8* %150, align 1
  %151 = load i32, i32* %20, align 4
  %152 = add i32 %151, 1
  store i32 %152, i32* %20, align 4
  %153 = load i8, i8* %21, align 1
  %154 = zext i8 %153 to i32
  %155 = add nsw i32 %154, 1
  %156 = load i8, i8* @IMGU_SHD_SETS, align 1
  %157 = zext i8 %156 to i32
  %158 = srem i32 %155, %157
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %21, align 1
  br label %160

160:                                              ; preds = %130, %116
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %264

163:                                              ; preds = %160
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* @IMGU_ABI_SHD_MAX_OPERATIONS, align 4
  %166 = icmp uge i32 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* @IMGU_ABI_SHD_MAX_PROCESS_LINES, align 4
  %170 = icmp uge i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167, %163
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %296

174:                                              ; preds = %167
  %175 = load i32, i32* @IMGU_ABI_ACC_OPTYPE_PROCESS_LINES, align 4
  %176 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %177 = load i32, i32* %18, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %176, i64 %178
  %180 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %179, i32 0, i32 1
  store i32 %175, i32* %180, align 8
  %181 = load i32, i32* %19, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %174
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 1
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load i8*, i8** @IMGU_ABI_ACC_OP_IDLE, align 8
  %188 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %189 = load i32, i32* %18, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %188, i64 %190
  %192 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %191, i32 0, i32 0
  store i8* %187, i8** %192, align 8
  br label %213

193:                                              ; preds = %183, %174
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %14, align 4
  %196 = sub i32 %195, 1
  %197 = icmp eq i32 %194, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %193
  %199 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_OPS, align 8
  %200 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %201 = load i32, i32* %18, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %200, i64 %202
  %204 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %203, i32 0, i32 0
  store i8* %199, i8** %204, align 8
  br label %212

205:                                              ; preds = %193
  %206 = load i8*, i8** @IMGU_ABI_ACC_OP_END_OF_ACK, align 8
  %207 = load %struct.imgu_abi_acc_operation*, %struct.imgu_abi_acc_operation** %15, align 8
  %208 = load i32, i32* %18, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %207, i64 %209
  %211 = getelementptr inbounds %struct.imgu_abi_acc_operation, %struct.imgu_abi_acc_operation* %210, i32 0, i32 0
  store i8* %206, i8** %211, align 8
  br label %212

212:                                              ; preds = %205, %198
  br label %213

213:                                              ; preds = %212, %186
  %214 = load i32, i32* %18, align 4
  %215 = add i32 %214, 1
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %19, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %213
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %16, align 8
  %221 = load i32, i32* %19, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %220, i64 %222
  %224 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %223, i32 0, i32 0
  store i32 %219, i32* %224, align 4
  br label %248

225:                                              ; preds = %213
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* %14, align 4
  %228 = sub i32 %227, 1
  %229 = icmp eq i32 %226, %228
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load i32, i32* %13, align 4
  %232 = icmp ugt i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %16, align 8
  %236 = load i32, i32* %19, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %235, i64 %237
  %239 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %238, i32 0, i32 0
  store i32 %234, i32* %239, align 4
  br label %247

240:                                              ; preds = %230, %225
  %241 = load i32, i32* %10, align 4
  %242 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %16, align 8
  %243 = load i32, i32* %19, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %242, i64 %244
  %246 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %245, i32 0, i32 0
  store i32 %241, i32* %246, align 4
  br label %247

247:                                              ; preds = %240, %233
  br label %248

248:                                              ; preds = %247, %218
  %249 = load i8, i8* %22, align 1
  %250 = load %struct.imgu_abi_acc_process_lines_cmd_data*, %struct.imgu_abi_acc_process_lines_cmd_data** %16, align 8
  %251 = load i32, i32* %19, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %250, i64 %252
  %254 = getelementptr inbounds %struct.imgu_abi_acc_process_lines_cmd_data, %struct.imgu_abi_acc_process_lines_cmd_data* %253, i32 0, i32 1
  store i8 %249, i8* %254, align 4
  %255 = load i32, i32* %19, align 4
  %256 = add i32 %255, 1
  store i32 %256, i32* %19, align 4
  %257 = load i8, i8* %22, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %258, 1
  %260 = load i8, i8* @IMGU_SHD_SETS, align 1
  %261 = zext i8 %260 to i32
  %262 = srem i32 %259, %261
  %263 = trunc i32 %262 to i8
  store i8 %263, i8* %22, align 1
  br label %264

264:                                              ; preds = %248, %160
  %265 = load i32, i32* %20, align 4
  %266 = load i8, i8* @IMGU_SHD_SETS, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %276, label %269

269:                                              ; preds = %264
  %270 = load i32, i32* %20, align 4
  %271 = load i32, i32* %14, align 4
  %272 = load i8, i8* %23, align 1
  %273 = zext i8 %272 to i32
  %274 = add i32 %271, %273
  %275 = icmp eq i32 %270, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %269, %264
  store i32 0, i32* %25, align 4
  store i32 1, i32* %24, align 4
  br label %277

277:                                              ; preds = %276, %269
  %278 = load i32, i32* %19, align 4
  %279 = icmp eq i32 %278, 2
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 1, i32* %25, align 4
  store i32 1, i32* %24, align 4
  br label %281

281:                                              ; preds = %280, %277
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* %14, align 4
  %284 = load i8, i8* %23, align 1
  %285 = zext i8 %284 to i32
  %286 = add i32 %283, %285
  %287 = icmp eq i32 %282, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  store i32 0, i32* %25, align 4
  br label %289

289:                                              ; preds = %288, %281
  %290 = load i32, i32* %19, align 4
  %291 = load i32, i32* %14, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %289
  store i32 0, i32* %24, align 4
  br label %294

294:                                              ; preds = %293, %289
  br label %108

295:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %296

296:                                              ; preds = %295, %171, %127
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @memset(%struct.imgu_abi_shd_intra_frame_operations_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
