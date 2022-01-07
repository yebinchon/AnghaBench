; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mpss_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mpss_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i64, i64, i32, i64, i32, i8*, i64, i32 }
%struct.elf32_phdr = type { i32, i64, i64, i64, i64 }
%struct.firmware = type { i64, i64 }
%struct.elf32_hdr = type { i32 }

@PHYS_ADDR_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1
@RMB_PMI_CODE_LENGTH_REG = common dso_local global i64 0, align 8
@QCOM_MDT_RELOCATABLE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"segment outside memory range\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"failed to load segment %d from truncated file %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"b%02d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"failed to load %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"assigning Q6 access to mpss memory failed: %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@RMB_PMI_CODE_START_REG = common dso_local global i64 0, align 8
@RMB_CMD_LOAD_READY = common dso_local global i64 0, align 8
@RMB_MBA_COMMAND_REG = common dso_local global i64 0, align 8
@RMB_MBA_AUTH_COMPLETE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"MPSS authentication timed out\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"MPSS authentication failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*)* @q6v5_mpss_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_mpss_load(%struct.q6v5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5*, align 8
  %4 = alloca %struct.elf32_phdr*, align 8
  %5 = alloca %struct.elf32_phdr*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.elf32_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %3, align 8
  %21 = load i64, i64* @PHYS_ADDR_MAX, align 8
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %17, align 8
  %22 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %23 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @strlen(i32 %24)
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %15, align 8
  %27 = icmp ule i64 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %398

31:                                               ; preds = %1
  %32 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %33 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kstrdup(i32 %34, i32 %35)
  store i8* %36, i8** %14, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %398

42:                                               ; preds = %31
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %45 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @request_firmware(%struct.firmware** %7, i8* %43, i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %52 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %54)
  br label %388

56:                                               ; preds = %42
  %57 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %58 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RMB_PMI_CODE_LENGTH_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i64 0, i64 %61)
  %63 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %64 = load %struct.firmware*, %struct.firmware** %7, align 8
  %65 = call i32 @q6v5_mpss_init_image(%struct.q6v5* %63, %struct.firmware* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %385

69:                                               ; preds = %56
  %70 = load %struct.firmware*, %struct.firmware** %7, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.elf32_hdr*
  store %struct.elf32_hdr* %73, %struct.elf32_hdr** %8, align 8
  %74 = load %struct.elf32_hdr*, %struct.elf32_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %74, i64 1
  %76 = bitcast %struct.elf32_hdr* %75 to %struct.elf32_phdr*
  store %struct.elf32_phdr* %76, %struct.elf32_phdr** %4, align 8
  store i32 0, i32* %20, align 4
  br label %77

77:                                               ; preds = %131, %69
  %78 = load i32, i32* %20, align 4
  %79 = load %struct.elf32_hdr*, %struct.elf32_hdr** %8, align 8
  %80 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %77
  %84 = load %struct.elf32_phdr*, %struct.elf32_phdr** %4, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %84, i64 %86
  store %struct.elf32_phdr* %87, %struct.elf32_phdr** %5, align 8
  %88 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %89 = call i32 @q6v5_phdr_valid(%struct.elf32_phdr* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  br label %131

92:                                               ; preds = %83
  %93 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %94 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @QCOM_MDT_RELOCATABLE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 1, i32* %13, align 4
  br label %100

100:                                              ; preds = %99, %92
  %101 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %102 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %108 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %11, align 8
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %112 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %115 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = load i64, i64* %12, align 8
  %119 = icmp sgt i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %110
  %121 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %122 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %125 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load i32, i32* @SZ_4K, align 4
  %129 = call i64 @ALIGN(i64 %127, i32 %128)
  store i64 %129, i64* %12, align 8
  br label %130

130:                                              ; preds = %120, %110
  br label %131

131:                                              ; preds = %130, %91
  %132 = load i32, i32* %20, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %20, align 4
  br label %77

134:                                              ; preds = %77
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i64, i64* %11, align 8
  br label %143

139:                                              ; preds = %134
  %140 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %141 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  br label %143

143:                                              ; preds = %139, %137
  %144 = phi i64 [ %138, %137 ], [ %142, %139 ]
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %147 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %146, i32 0, i32 6
  store i64 %145, i64* %147, align 8
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %306, %143
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.elf32_hdr*, %struct.elf32_hdr** %8, align 8
  %151 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %309

154:                                              ; preds = %148
  %155 = load %struct.elf32_phdr*, %struct.elf32_phdr** %4, align 8
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %155, i64 %157
  store %struct.elf32_phdr* %158, %struct.elf32_phdr** %5, align 8
  %159 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %160 = call i32 @q6v5_phdr_valid(%struct.elf32_phdr* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %154
  br label %306

163:                                              ; preds = %154
  %164 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %165 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = sub nsw i64 %166, %167
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %163
  %172 = load i64, i64* %16, align 8
  %173 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %174 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %178 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp sgt i64 %176, %179
  br i1 %180, label %181, label %188

181:                                              ; preds = %171, %163
  %182 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %183 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @dev_err(i32 %184, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %19, align 4
  br label %385

188:                                              ; preds = %171
  %189 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %190 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %189, i32 0, i32 5
  %191 = load i8*, i8** %190, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr i8, i8* %191, i64 %192
  store i8* %193, i8** %18, align 8
  %194 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %195 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %240

198:                                              ; preds = %188
  %199 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %200 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.firmware*, %struct.firmware** %7, align 8
  %203 = getelementptr inbounds %struct.firmware, %struct.firmware* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp slt i64 %201, %204
  br i1 %205, label %206, label %240

206:                                              ; preds = %198
  %207 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %208 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %211 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %209, %212
  %214 = load %struct.firmware*, %struct.firmware** %7, align 8
  %215 = getelementptr inbounds %struct.firmware, %struct.firmware* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %213, %216
  br i1 %217, label %218, label %227

218:                                              ; preds = %206
  %219 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %220 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %20, align 4
  %223 = load i8*, i8** %14, align 8
  %224 = call i32 (i32, i8*, ...) @dev_err(i32 %221, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %222, i8* %223)
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %19, align 4
  br label %385

227:                                              ; preds = %206
  %228 = load i8*, i8** %18, align 8
  %229 = load %struct.firmware*, %struct.firmware** %7, align 8
  %230 = getelementptr inbounds %struct.firmware, %struct.firmware* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %233 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %231, %234
  %236 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %237 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @memcpy(i8* %228, i64 %235, i64 %238)
  br label %277

240:                                              ; preds = %198, %188
  %241 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %242 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %276

245:                                              ; preds = %240
  %246 = load i8*, i8** %14, align 8
  %247 = load i64, i64* %15, align 8
  %248 = getelementptr inbounds i8, i8* %246, i64 %247
  %249 = getelementptr inbounds i8, i8* %248, i64 -3
  %250 = load i32, i32* %20, align 4
  %251 = call i32 @sprintf(i8* %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %250)
  %252 = load i8*, i8** %14, align 8
  %253 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %254 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @request_firmware(%struct.firmware** %6, i8* %252, i32 %255)
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %19, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %245
  %260 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %261 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 (i32, i8*, ...) @dev_err(i32 %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %263)
  br label %385

265:                                              ; preds = %245
  %266 = load i8*, i8** %18, align 8
  %267 = load %struct.firmware*, %struct.firmware** %6, align 8
  %268 = getelementptr inbounds %struct.firmware, %struct.firmware* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.firmware*, %struct.firmware** %6, align 8
  %271 = getelementptr inbounds %struct.firmware, %struct.firmware* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @memcpy(i8* %266, i64 %269, i64 %272)
  %274 = load %struct.firmware*, %struct.firmware** %6, align 8
  %275 = call i32 @release_firmware(%struct.firmware* %274)
  br label %276

276:                                              ; preds = %265, %240
  br label %277

277:                                              ; preds = %276, %227
  %278 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %279 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %282 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %280, %283
  br i1 %284, label %285, label %300

285:                                              ; preds = %277
  %286 = load i8*, i8** %18, align 8
  %287 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %288 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr i8, i8* %286, i64 %289
  %291 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %292 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %295 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %294, i32 0, i32 3
  %296 = load i64, i64* %295, align 8
  %297 = sub nsw i64 %293, %296
  %298 = trunc i64 %297 to i32
  %299 = call i32 @memset(i8* %290, i32 0, i32 %298)
  br label %300

300:                                              ; preds = %285, %277
  %301 = load %struct.elf32_phdr*, %struct.elf32_phdr** %5, align 8
  %302 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %301, i32 0, i32 2
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* %17, align 8
  %305 = add i64 %304, %303
  store i64 %305, i64* %17, align 8
  br label %306

306:                                              ; preds = %300, %162
  %307 = load i32, i32* %20, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %20, align 4
  br label %148

309:                                              ; preds = %148
  %310 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %311 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %312 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %311, i32 0, i32 4
  %313 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %314 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %317 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %310, i32* %312, i32 1, i64 %315, i64 %318)
  store i32 %319, i32* %19, align 4
  %320 = load i32, i32* %19, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %309
  %323 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %324 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %19, align 4
  %327 = call i32 (i32, i8*, ...) @dev_err(i32 %325, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %326)
  %328 = load i32, i32* @EAGAIN, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %19, align 4
  br label %385

330:                                              ; preds = %309
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %335 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  br label %339

337:                                              ; preds = %330
  %338 = load i64, i64* %11, align 8
  br label %339

339:                                              ; preds = %337, %333
  %340 = phi i64 [ %336, %333 ], [ %338, %337 ]
  store i64 %340, i64* %10, align 8
  %341 = load i64, i64* %10, align 8
  %342 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %343 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %342, i32 0, i32 3
  %344 = load i64, i64* %343, align 8
  %345 = load i64, i64* @RMB_PMI_CODE_START_REG, align 8
  %346 = add nsw i64 %344, %345
  %347 = call i32 @writel(i64 %341, i64 %346)
  %348 = load i64, i64* @RMB_CMD_LOAD_READY, align 8
  %349 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %350 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %349, i32 0, i32 3
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @RMB_MBA_COMMAND_REG, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @writel(i64 %348, i64 %353)
  %355 = load i64, i64* %17, align 8
  %356 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %357 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %356, i32 0, i32 3
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @RMB_PMI_CODE_LENGTH_REG, align 8
  %360 = add nsw i64 %358, %359
  %361 = call i32 @writel(i64 %355, i64 %360)
  %362 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %363 = load i32, i32* @RMB_MBA_AUTH_COMPLETE, align 4
  %364 = call i32 @q6v5_rmb_mba_wait(%struct.q6v5* %362, i32 %363, i32 10000)
  store i32 %364, i32* %19, align 4
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* @ETIMEDOUT, align 4
  %367 = sub nsw i32 0, %366
  %368 = icmp eq i32 %365, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %339
  %370 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %371 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = call i32 (i32, i8*, ...) @dev_err(i32 %372, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %384

374:                                              ; preds = %339
  %375 = load i32, i32* %19, align 4
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %383

377:                                              ; preds = %374
  %378 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %379 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* %19, align 4
  %382 = call i32 (i32, i8*, ...) @dev_err(i32 %380, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %381)
  br label %383

383:                                              ; preds = %377, %374
  br label %384

384:                                              ; preds = %383, %369
  br label %385

385:                                              ; preds = %384, %322, %259, %218, %181, %68
  %386 = load %struct.firmware*, %struct.firmware** %7, align 8
  %387 = call i32 @release_firmware(%struct.firmware* %386)
  br label %388

388:                                              ; preds = %385, %50
  %389 = load i8*, i8** %14, align 8
  %390 = call i32 @kfree(i8* %389)
  %391 = load i32, i32* %19, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = load i32, i32* %19, align 4
  br label %396

395:                                              ; preds = %388
  br label %396

396:                                              ; preds = %395, %393
  %397 = phi i32 [ %394, %393 ], [ 0, %395 ]
  store i32 %397, i32* %2, align 4
  br label %398

398:                                              ; preds = %396, %39, %28
  %399 = load i32, i32* %2, align 4
  ret i32 %399
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @q6v5_mpss_init_image(%struct.q6v5*, %struct.firmware*) #1

declare dso_local i32 @q6v5_phdr_valid(%struct.elf32_phdr*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @q6v5_xfer_mem_ownership(%struct.q6v5*, i32*, i32, i64, i64) #1

declare dso_local i32 @q6v5_rmb_mba_wait(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
