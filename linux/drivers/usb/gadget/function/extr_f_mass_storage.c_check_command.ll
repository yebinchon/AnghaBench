; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_check_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_check_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { i32*, i64, i32, i32, i32, i32, i32, i32, i32, i64, %struct.fsg_lun* }
%struct.fsg_lun = type { i64, i64, i64, i64 }

@check_command.dirletter = internal constant [4 x i8] c"uoin", align 1
@DATA_DIR_UNKNOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c", H%c=%u\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SCSI command: %s;  Dc=%d, D%c=%u;  Hc=%d%s\0A\00", align 1
@DATA_DIR_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s is buggy! Expected length %d but we got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"using LUN %u from CBW, not LUN %u from CDB\0A\00", align 1
@REQUEST_SENSE = common dso_local global i32 0, align 4
@SS_NO_SENSE = common dso_local global i64 0, align 8
@INQUIRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"unsupported LUN %u\0A\00", align 1
@SS_INVALID_FIELD_IN_CDB = common dso_local global i64 0, align 8
@SS_MEDIUM_NOT_PRESENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, i32, i32, i32, i32, i8*)* @check_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_command(%struct.fsg_common* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsg_common*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [20 x i8], align 16
  %17 = alloca %struct.fsg_lun*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %19 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %15, align 4
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  store i8 0, i8* %24, align 16
  %25 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %26 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DATA_DIR_UNKNOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %6
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %32 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %33 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* @check_command.dirletter, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %40 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8 signext %38, i32 %41)
  br label %43

43:                                               ; preds = %30, %6
  %44 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i8], [4 x i8]* @check_command.dirletter, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %52 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %55 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %58 = call i32 @VDBG(%struct.fsg_common* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46, i8 signext %50, i32 %53, i32 %56, i8* %57)
  %59 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %60 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %43
  %64 = load i32, i32* @DATA_DIR_NONE, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %43
  %66 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %67 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %70 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %75 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %78 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %80 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %73, %65
  %82 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %83 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %86 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %88 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %91 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %93 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = icmp ne i64 %94, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %81
  %99 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %100 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %105 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %104, i32 0, i32 5
  store i32 1, i32* %105, align 4
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %293

108:                                              ; preds = %98, %81
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %111 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %117 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = icmp sle i32 %115, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %125 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.fsg_common*, i8*, ...) @DBG(%struct.fsg_common* %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %122, i32 %123, i32 %126)
  %128 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %129 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* %9, align 4
  br label %136

131:                                              ; preds = %114
  %132 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %133 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %132, i32 0, i32 5
  store i32 1, i32* %133, align 4
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %293

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136, %108
  %138 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %139 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %145 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %146 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %145, i32 0, i32 8
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 (%struct.fsg_common*, i8*, ...) @DBG(%struct.fsg_common* %144, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %143, %137
  %151 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %152 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %151, i32 0, i32 10
  %153 = load %struct.fsg_lun*, %struct.fsg_lun** %152, align 8
  store %struct.fsg_lun* %153, %struct.fsg_lun** %17, align 8
  %154 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %155 = icmp ne %struct.fsg_lun* %154, null
  br i1 %155, label %156, label %173

156:                                              ; preds = %150
  %157 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %158 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @REQUEST_SENSE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = load i64, i64* @SS_NO_SENSE, align 8
  %166 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %167 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  %168 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %169 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  %170 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %171 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %170, i32 0, i32 2
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %164, %156
  br label %200

173:                                              ; preds = %150
  %174 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %175 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %174, i32 0, i32 9
  store i64 0, i64* %175, align 8
  %176 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %177 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @INQUIRY, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %173
  %184 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %185 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @REQUEST_SENSE, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %183
  %192 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %193 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %194 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %193, i32 0, i32 8
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (%struct.fsg_common*, i8*, ...) @DBG(%struct.fsg_common* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @EINVAL, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %7, align 4
  br label %293

199:                                              ; preds = %183, %173
  br label %200

200:                                              ; preds = %199, %172
  %201 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %202 = icmp ne %struct.fsg_lun* %201, null
  br i1 %202, label %203, label %236

203:                                              ; preds = %200
  %204 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %205 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @SS_NO_SENSE, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %236

209:                                              ; preds = %203
  %210 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %211 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @INQUIRY, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %209
  %218 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %219 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @REQUEST_SENSE, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %217
  %226 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %227 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %230 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %229, i32 0, i32 0
  store i64 %228, i64* %230, align 8
  %231 = load i64, i64* @SS_NO_SENSE, align 8
  %232 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %233 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %7, align 4
  br label %293

236:                                              ; preds = %217, %209, %203, %200
  %237 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %238 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 31
  store i32 %242, i32* %240, align 4
  store i32 1, i32* %14, align 4
  br label %243

243:                                              ; preds = %273, %236
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* %9, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %276

247:                                              ; preds = %243
  %248 = load %struct.fsg_common*, %struct.fsg_common** %8, align 8
  %249 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %247
  %257 = load i32, i32* %11, align 4
  %258 = load i32, i32* %14, align 4
  %259 = shl i32 1, %258
  %260 = and i32 %257, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %272, label %262

262:                                              ; preds = %256
  %263 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %264 = icmp ne %struct.fsg_lun* %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load i64, i64* @SS_INVALID_FIELD_IN_CDB, align 8
  %267 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %268 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %267, i32 0, i32 0
  store i64 %266, i64* %268, align 8
  br label %269

269:                                              ; preds = %265, %262
  %270 = load i32, i32* @EINVAL, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %7, align 4
  br label %293

272:                                              ; preds = %256, %247
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %243

276:                                              ; preds = %243
  %277 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %278 = icmp ne %struct.fsg_lun* %277, null
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %281 = call i32 @fsg_lun_is_open(%struct.fsg_lun* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %279
  %284 = load i32, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %283
  %287 = load i64, i64* @SS_MEDIUM_NOT_PRESENT, align 8
  %288 = load %struct.fsg_lun*, %struct.fsg_lun** %17, align 8
  %289 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %7, align 4
  br label %293

292:                                              ; preds = %283, %279, %276
  store i32 0, i32* %7, align 4
  br label %293

293:                                              ; preds = %292, %286, %269, %225, %191, %131, %103
  %294 = load i32, i32* %7, align 4
  ret i32 %294
}

declare dso_local i32 @sprintf(i8*, i8*, i8 signext, i32) #1

declare dso_local i32 @VDBG(%struct.fsg_common*, i8*, i8*, i32, i8 signext, i32, i32, i8*) #1

declare dso_local i32 @DBG(%struct.fsg_common*, i8*, ...) #1

declare dso_local i32 @fsg_lun_is_open(%struct.fsg_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
