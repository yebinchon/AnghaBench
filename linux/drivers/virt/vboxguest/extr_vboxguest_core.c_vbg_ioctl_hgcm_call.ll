; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_call.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_ioctl_hgcm_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vbg_session = type { i32, i32* }
%struct.vbg_ioctl_hgcm_call = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.vmmdev_hgcm_function_parameter32 = type { i32 }
%struct.vmmdev_hgcm_function_parameter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VMMDEV_HGCM_MAX_PARMS = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"VBG_IOCTL_HGCM_CALL: hdr.size_in %d required size is %zd\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"VBG_IOCTL_HGCM_CALL: INVALID handle. u32Client=%#08x\0A\00", align 1
@CONFIG_COMPAT = common dso_local global i32 0, align 4
@VERR_OUT_OF_RANGE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"VBG_IOCTL_HGCM_CALL error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*, %struct.vbg_session*, i32, %struct.vbg_ioctl_hgcm_call*)* @vbg_ioctl_hgcm_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_ioctl_hgcm_call(%struct.vbg_dev* %0, %struct.vbg_session* %1, i32 %2, %struct.vbg_ioctl_hgcm_call* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vbg_dev*, align 8
  %7 = alloca %struct.vbg_session*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vbg_ioctl_hgcm_call*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vmmdev_hgcm_function_parameter32*, align 8
  %15 = alloca %struct.vmmdev_hgcm_function_parameter*, align 8
  store %struct.vbg_dev* %0, %struct.vbg_dev** %6, align 8
  store %struct.vbg_session* %1, %struct.vbg_session** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.vbg_ioctl_hgcm_call* %3, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %16 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %17 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 28
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %276

25:                                               ; preds = %4
  %26 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %27 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %31 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %276

38:                                               ; preds = %25
  %39 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %40 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @VMMDEV_HGCM_MAX_PARMS, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @E2BIG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %276

47:                                               ; preds = %38
  %48 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %49 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @U32_MAX, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %276

60:                                               ; preds = %53
  store i64 28, i64* %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %65 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %10, align 8
  br label %79

71:                                               ; preds = %60
  %72 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %73 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %71, %63
  %80 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %81 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %10, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %89 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %10, align 8
  %94 = call i32 (i8*, i64, ...) @vbg_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %92, i64 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %276

97:                                               ; preds = %79
  %98 = load i64, i64* %10, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %101 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %131

105:                                              ; preds = %97
  %106 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %107 = call %struct.vmmdev_hgcm_function_parameter32* @VBG_IOCTL_HGCM_CALL_PARMS32(%struct.vbg_ioctl_hgcm_call* %106)
  store %struct.vmmdev_hgcm_function_parameter32* %107, %struct.vmmdev_hgcm_function_parameter32** %14, align 8
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %127, %105
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %111 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %108
  %115 = load %struct.vmmdev_hgcm_function_parameter32*, %struct.vmmdev_hgcm_function_parameter32** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter32, %struct.vmmdev_hgcm_function_parameter32* %115, i64 %117
  %119 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter32, %struct.vmmdev_hgcm_function_parameter32* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @vbg_param_valid(i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %276

126:                                              ; preds = %114
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %108

130:                                              ; preds = %108
  br label %157

131:                                              ; preds = %97
  %132 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %133 = call %struct.vmmdev_hgcm_function_parameter* @VBG_IOCTL_HGCM_CALL_PARMS(%struct.vbg_ioctl_hgcm_call* %132)
  store %struct.vmmdev_hgcm_function_parameter* %133, %struct.vmmdev_hgcm_function_parameter** %15, align 8
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %153, %131
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %137 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = load %struct.vmmdev_hgcm_function_parameter*, %struct.vmmdev_hgcm_function_parameter** %15, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %141, i64 %143
  %145 = getelementptr inbounds %struct.vmmdev_hgcm_function_parameter, %struct.vmmdev_hgcm_function_parameter* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @vbg_param_valid(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %276

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %134

156:                                              ; preds = %134
  br label %157

157:                                              ; preds = %156, %130
  %158 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %159 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %158, i32 0, i32 0
  %160 = call i32 @mutex_lock(i32* %159)
  store i32 0, i32* %12, align 4
  br label %161

161:                                              ; preds = %180, %157
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.vbg_session*, %struct.vbg_session** %7, align 8
  %164 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @ARRAY_SIZE(i32* %165)
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %161
  %169 = load %struct.vbg_session*, %struct.vbg_session** %7, align 8
  %170 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %11, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %183

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %161

183:                                              ; preds = %178, %161
  %184 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %185 = getelementptr inbounds %struct.vbg_dev, %struct.vbg_dev* %184, i32 0, i32 0
  %186 = call i32 @mutex_unlock(i32* %185)
  %187 = load i32, i32* %12, align 4
  %188 = load %struct.vbg_session*, %struct.vbg_session** %7, align 8
  %189 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @ARRAY_SIZE(i32* %190)
  %192 = icmp sge i32 %187, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %183
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = call i32 (i8*, i64, ...) @vbg_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %5, align 4
  br label %276

199:                                              ; preds = %183
  %200 = load i32, i32* @CONFIG_COMPAT, align 4
  %201 = call i64 @IS_ENABLED(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = load i32, i32* %8, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %203
  %207 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %208 = load %struct.vbg_session*, %struct.vbg_session** %7, align 8
  %209 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %213 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %216 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %219 = call %struct.vmmdev_hgcm_function_parameter32* @VBG_IOCTL_HGCM_CALL_PARMS32(%struct.vbg_ioctl_hgcm_call* %218)
  %220 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %221 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %224 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 2
  %226 = call i32 @vbg_hgcm_call32(%struct.vbg_dev* %207, i32 %210, i32 %211, i32 %214, i32 %217, %struct.vmmdev_hgcm_function_parameter32* %219, i32 %222, i32* %225)
  store i32 %226, i32* %13, align 4
  br label %248

227:                                              ; preds = %203, %199
  %228 = load %struct.vbg_dev*, %struct.vbg_dev** %6, align 8
  %229 = load %struct.vbg_session*, %struct.vbg_session** %7, align 8
  %230 = getelementptr inbounds %struct.vbg_session, %struct.vbg_session* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %234 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %237 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %240 = call %struct.vmmdev_hgcm_function_parameter* @VBG_IOCTL_HGCM_CALL_PARMS(%struct.vbg_ioctl_hgcm_call* %239)
  %241 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %242 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %245 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 2
  %247 = call i32 @vbg_hgcm_call(%struct.vbg_dev* %228, i32 %231, i32 %232, i32 %235, i32 %238, %struct.vmmdev_hgcm_function_parameter* %240, i32 %243, i32* %246)
  store i32 %247, i32* %13, align 4
  br label %248

248:                                              ; preds = %227, %206
  %249 = load i32, i32* %13, align 4
  %250 = load i32, i32* @E2BIG, align 4
  %251 = sub nsw i32 0, %250
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load i32, i32* @VERR_OUT_OF_RANGE, align 4
  %255 = load %struct.vbg_ioctl_hgcm_call*, %struct.vbg_ioctl_hgcm_call** %9, align 8
  %256 = getelementptr inbounds %struct.vbg_ioctl_hgcm_call, %struct.vbg_ioctl_hgcm_call* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 2
  store i32 %254, i32* %257, align 4
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %253, %248
  %259 = load i32, i32* %13, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %274

261:                                              ; preds = %258
  %262 = load i32, i32* %13, align 4
  %263 = load i32, i32* @EINTR, align 4
  %264 = sub nsw i32 0, %263
  %265 = icmp ne i32 %262, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %261
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* @ETIMEDOUT, align 4
  %269 = sub nsw i32 0, %268
  %270 = icmp ne i32 %267, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @vbg_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %271, %266, %261, %258
  %275 = load i32, i32* %13, align 4
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %274, %193, %149, %123, %87, %57, %44, %35, %22
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @vbg_debug(i8*, i64, ...) #1

declare dso_local %struct.vmmdev_hgcm_function_parameter32* @VBG_IOCTL_HGCM_CALL_PARMS32(%struct.vbg_ioctl_hgcm_call*) #1

declare dso_local i32 @vbg_param_valid(i32) #1

declare dso_local %struct.vmmdev_hgcm_function_parameter* @VBG_IOCTL_HGCM_CALL_PARMS(%struct.vbg_ioctl_hgcm_call*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @vbg_hgcm_call32(%struct.vbg_dev*, i32, i32, i32, i32, %struct.vmmdev_hgcm_function_parameter32*, i32, i32*) #1

declare dso_local i32 @vbg_hgcm_call(%struct.vbg_dev*, i32, i32, i32, i32, %struct.vmmdev_hgcm_function_parameter*, i32, i32*) #1

declare dso_local i32 @vbg_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
