; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_rio_map_inb_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_rio_map_inb_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i64, %struct.TYPE_2__*, i64, %struct.tsi721_ib_win* }
%struct.TYPE_2__ = type { i32 }
%struct.tsi721_ib_win = type { i32, i32, i32, i32, i32, i32 }
%struct.tsi721_ib_win_mapping = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Direct (RIO_0x%llx -> PCIe_%pad), size=0x%llx, ibw_start = 0x%llx\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Translated (RIO_0x%llx -> PCIe_%pad), size=0x%llx\00", align 1
@TSI721_IBWIN_NUM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TSI721_IBWIN_LB_WEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TSI721_IBWIN_TLA_ADD = common dso_local global i32 0, align 4
@TSI721_IBWIN_LB_BA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Configured IBWIN%d (RIO_0x%llx -> PCIe_%pad), size=0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i32, i32, i32)* @tsi721_rio_map_inb_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_rio_map_inb_mem(%struct.rio_mport* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rio_mport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tsi721_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.tsi721_ib_win*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.tsi721_ib_win_mapping*, align 8
  %22 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.rio_mport*, %struct.rio_mport** %7, align 8
  %24 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %23, i32 0, i32 0
  %25 = load %struct.tsi721_device*, %struct.tsi721_device** %24, align 8
  store %struct.tsi721_device* %25, %struct.tsi721_device** %12, align 8
  store i32 -1, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %17, align 4
  store %struct.tsi721_ib_win_mapping* null, %struct.tsi721_ib_win_mapping** %21, align 8
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 17179869184
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %346

38:                                               ; preds = %5
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @roundup_pow_of_two(i32 %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %18, align 4
  %46 = sub nsw i32 %45, 1
  %47 = xor i32 %46, -1
  %48 = and i32 %44, %47
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* @IBW, align 4
  %50 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %51 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i32 (i32, i32*, i8*, i32, ...) @tsi_debug(i32 %49, i32* %53, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %54, i32* %8, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %80, %41
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %18, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %58
  %67 = load i32, i32* %18, align 4
  %68 = mul nsw i32 %67, 2
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %18, align 4
  %71 = sub nsw i32 %70, 1
  %72 = xor i32 %71, -1
  %73 = and i32 %69, %72
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %75, 17179869184
  br i1 %76, label %77, label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @EBUSY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %346

80:                                               ; preds = %66
  br label %58

81:                                               ; preds = %58
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call %struct.tsi721_ib_win_mapping* @kzalloc(i32 8, i32 %83)
  store %struct.tsi721_ib_win_mapping* %84, %struct.tsi721_ib_win_mapping** %21, align 8
  %85 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %86 = icmp eq %struct.tsi721_ib_win_mapping* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %346

90:                                               ; preds = %81
  br label %133

91:                                               ; preds = %38
  %92 = load i32, i32* @IBW, align 4
  %93 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %94 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i32, i32*, i8*, i32, ...) @tsi_debug(i32 %92, i32* %96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %97, i32* %8, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @is_power_of_2(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 4096
  br i1 %105, label %118, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 1
  %110 = and i32 %107, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112, %106, %103, %91
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %346

121:                                              ; preds = %112
  %122 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %123 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32, i32* @EBUSY, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %6, align 4
  br label %346

129:                                              ; preds = %121
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %19, align 4
  br label %133

133:                                              ; preds = %129, %90
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %216, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @TSI721_IBWIN_NUM, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %219

138:                                              ; preds = %134
  %139 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %140 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %139, i32 0, i32 3
  %141 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %140, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %141, i64 %143
  store %struct.tsi721_ib_win* %144, %struct.tsi721_ib_win** %16, align 8
  %145 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %146 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  store i32 %153, i32* %14, align 4
  store i32 0, i32* %22, align 4
  br label %154

154:                                              ; preds = %152, %149
  br label %215

155:                                              ; preds = %138
  %156 = load i32, i32* %20, align 4
  %157 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %158 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %161 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %159, %162
  %164 = icmp slt i32 %156, %163
  br i1 %164, label %165, label %214

165:                                              ; preds = %155
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %166, %167
  %169 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %170 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sgt i32 %168, %171
  br i1 %172, label %173, label %214

173:                                              ; preds = %165
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %178 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176, %173
  %182 = load i32, i32* @EFAULT, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %22, align 4
  br label %219

184:                                              ; preds = %176
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %187 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp sge i32 %185, %188
  br i1 %189, label %190, label %211

190:                                              ; preds = %184
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %191, %192
  %194 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %195 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %198 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %196, %199
  %201 = icmp sle i32 %193, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %190
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %205 = getelementptr inbounds %struct.tsi721_ib_win_mapping, %struct.tsi721_ib_win_mapping* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %207 = getelementptr inbounds %struct.tsi721_ib_win_mapping, %struct.tsi721_ib_win_mapping* %206, i32 0, i32 1
  %208 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %209 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %208, i32 0, i32 5
  %210 = call i32 @list_add_tail(i32* %207, i32* %209)
  store i32 0, i32* %6, align 4
  br label %346

211:                                              ; preds = %190, %184
  %212 = load i32, i32* @EFAULT, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %22, align 4
  br label %219

214:                                              ; preds = %165, %155
  br label %215

215:                                              ; preds = %214, %154
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  br label %134

219:                                              ; preds = %211, %181, %134
  %220 = load i32, i32* %22, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %342

223:                                              ; preds = %219
  %224 = load i32, i32* %14, align 4
  store i32 %224, i32* %13, align 4
  %225 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %226 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i64 @TSI721_IBWIN_LB(i32 %228)
  %230 = add nsw i64 %227, %229
  %231 = call i32 @ioread32(i64 %230)
  store i32 %231, i32* %15, align 4
  %232 = load i32, i32* %15, align 4
  %233 = load i32, i32* @TSI721_IBWIN_LB_WEN, align 4
  %234 = and i32 %232, %233
  %235 = call i64 @WARN_ON(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %223
  %238 = load i32, i32* @EIO, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %22, align 4
  br label %342

240:                                              ; preds = %223
  %241 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %242 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %241, i32 0, i32 3
  %243 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %242, align 8
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %243, i64 %245
  store %struct.tsi721_ib_win* %246, %struct.tsi721_ib_win** %16, align 8
  %247 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %248 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %247, i32 0, i32 0
  store i32 1, i32* %248, align 4
  %249 = load i32, i32* %20, align 4
  %250 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %251 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %19, align 4
  %253 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %254 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %253, i32 0, i32 4
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %18, align 4
  %256 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %257 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* %9, align 4
  %260 = icmp ne i32 %258, %259
  %261 = zext i1 %260 to i32
  %262 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %263 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %262, i32 0, i32 3
  store i32 %261, i32* %263, align 4
  %264 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %265 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %264, i32 0, i32 5
  %266 = call i32 @INIT_LIST_HEAD(i32* %265)
  %267 = load i32, i32* %17, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %278

269:                                              ; preds = %240
  %270 = load i32, i32* %8, align 4
  %271 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %272 = getelementptr inbounds %struct.tsi721_ib_win_mapping, %struct.tsi721_ib_win_mapping* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %274 = getelementptr inbounds %struct.tsi721_ib_win_mapping, %struct.tsi721_ib_win_mapping* %273, i32 0, i32 1
  %275 = load %struct.tsi721_ib_win*, %struct.tsi721_ib_win** %16, align 8
  %276 = getelementptr inbounds %struct.tsi721_ib_win, %struct.tsi721_ib_win* %275, i32 0, i32 5
  %277 = call i32 @list_add_tail(i32* %274, i32* %276)
  br label %278

278:                                              ; preds = %269, %240
  %279 = load i32, i32* %18, align 4
  %280 = call i32 @TSI721_IBWIN_SIZE(i32 %279)
  %281 = shl i32 %280, 8
  %282 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %283 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* %13, align 4
  %286 = call i64 @TSI721_IBWIN_SZ(i32 %285)
  %287 = add nsw i64 %284, %286
  %288 = call i32 @iowrite32(i32 %281, i64 %287)
  %289 = load i32, i32* %19, align 4
  %290 = ashr i32 %289, 32
  %291 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %292 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = call i64 @TSI721_IBWIN_TUA(i32 %294)
  %296 = add nsw i64 %293, %295
  %297 = call i32 @iowrite32(i32 %290, i64 %296)
  %298 = load i32, i32* %19, align 4
  %299 = load i32, i32* @TSI721_IBWIN_TLA_ADD, align 4
  %300 = and i32 %298, %299
  %301 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %302 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i32, i32* %13, align 4
  %305 = call i64 @TSI721_IBWIN_TLA(i32 %304)
  %306 = add nsw i64 %303, %305
  %307 = call i32 @iowrite32(i32 %300, i64 %306)
  %308 = load i32, i32* %20, align 4
  %309 = ashr i32 %308, 32
  %310 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %311 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = call i64 @TSI721_IBWIN_UB(i32 %313)
  %315 = add nsw i64 %312, %314
  %316 = call i32 @iowrite32(i32 %309, i64 %315)
  %317 = load i32, i32* %20, align 4
  %318 = load i32, i32* @TSI721_IBWIN_LB_BA, align 4
  %319 = and i32 %317, %318
  %320 = load i32, i32* @TSI721_IBWIN_LB_WEN, align 4
  %321 = or i32 %319, %320
  %322 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %323 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* %13, align 4
  %326 = call i64 @TSI721_IBWIN_LB(i32 %325)
  %327 = add nsw i64 %324, %326
  %328 = call i32 @iowrite32(i32 %321, i64 %327)
  %329 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %330 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = add nsw i64 %331, -1
  store i64 %332, i64* %330, align 8
  %333 = load i32, i32* @IBW, align 4
  %334 = load %struct.tsi721_device*, %struct.tsi721_device** %12, align 8
  %335 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %334, i32 0, i32 1
  %336 = load %struct.TYPE_2__*, %struct.TYPE_2__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %336, i32 0, i32 0
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %20, align 4
  %340 = load i32, i32* %18, align 4
  %341 = call i32 (i32, i32*, i8*, i32, ...) @tsi_debug(i32 %333, i32* %337, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %338, i32 %339, i32* %19, i32 %340)
  store i32 0, i32* %6, align 4
  br label %346

342:                                              ; preds = %237, %222
  %343 = load %struct.tsi721_ib_win_mapping*, %struct.tsi721_ib_win_mapping** %21, align 8
  %344 = call i32 @kfree(%struct.tsi721_ib_win_mapping* %343)
  %345 = load i32, i32* %22, align 4
  store i32 %345, i32* %6, align 4
  br label %346

346:                                              ; preds = %342, %278, %202, %126, %118, %87, %77, %35
  %347 = load i32, i32* %6, align 4
  ret i32 %347
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, ...) #1

declare dso_local %struct.tsi721_ib_win_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i64 @TSI721_IBWIN_LB(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @TSI721_IBWIN_SIZE(i32) #1

declare dso_local i64 @TSI721_IBWIN_SZ(i32) #1

declare dso_local i64 @TSI721_IBWIN_TUA(i32) #1

declare dso_local i64 @TSI721_IBWIN_TLA(i32) #1

declare dso_local i64 @TSI721_IBWIN_UB(i32) #1

declare dso_local i32 @kfree(%struct.tsi721_ib_win_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
