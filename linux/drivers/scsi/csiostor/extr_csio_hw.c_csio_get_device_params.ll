; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_get_device_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_get_device_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32, %struct.TYPE_4__*, i8*, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.csio_wrm = type { i8*, i8* }
%struct.csio_mb = type { i32 }

@CSIO_MAX_PPORTS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@n_err_nomem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PORTVEC = common dso_local global i32 0, align 4
@CCLK = common dso_local global i32 0, align 4
@EQ_START = common dso_local global i32 0, align 4
@EQ_END = common dso_local global i32 0, align 4
@IQFLINT_START = common dso_local global i32 0, align 4
@IQFLINT_END = common dso_local global i32 0, align 4
@CSIO_MB_DEFAULT_TMO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Issue of FW_PARAMS_CMD(read) failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FW_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"FW_PARAMS_CMD(read) failed with ret:0x%x!\0A\00", align 1
@CSIO_HWF_USING_SOFT_PARAMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Using fwconfig max niqs %d neqs %d\0A\00", align 1
@csio_port_mask = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Port vector: 0x%x, #ports: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Found Port:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*)* @csio_get_device_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_get_device_params(%struct.csio_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.csio_hw*, align 8
  %4 = alloca %struct.csio_wrm*, align 8
  %5 = alloca %struct.csio_mb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %3, align 8
  %10 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %11 = call %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw* %10)
  store %struct.csio_wrm* %11, %struct.csio_wrm** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @CSIO_MAX_PPORTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %29 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.csio_mb* @mempool_alloc(i32 %30, i32 %31)
  store %struct.csio_mb* %32, %struct.csio_mb** %5, align 8
  %33 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %34 = icmp ne %struct.csio_mb* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %37 = load i32, i32* @n_err_nomem, align 4
  %38 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %36, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %233

41:                                               ; preds = %27
  %42 = load i32, i32* @PORTVEC, align 4
  %43 = call i8* @FW_PARAM_DEV(i32 %42)
  %44 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  store i8* %43, i8** %44, align 16
  %45 = load i32, i32* @CCLK, align 4
  %46 = call i8* @FW_PARAM_DEV(i32 %45)
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* @EQ_START, align 4
  %49 = call i8* @FW_PARAM_PFVF(i32 %48)
  %50 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  store i8* %49, i8** %50, align 16
  %51 = load i32, i32* @EQ_END, align 4
  %52 = call i8* @FW_PARAM_PFVF(i32 %51)
  %53 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @IQFLINT_START, align 4
  %55 = call i8* @FW_PARAM_PFVF(i32 %54)
  %56 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  store i8* %55, i8** %56, align 16
  %57 = load i32, i32* @IQFLINT_END, align 4
  %58 = call i8* @FW_PARAM_PFVF(i32 %57)
  %59 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  store i8* %58, i8** %59, align 8
  %60 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %61 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %62 = load i32, i32* @CSIO_MB_DEFAULT_TMO, align 4
  %63 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %64 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %67 = call i32 @ARRAY_SIZE(i8** %66)
  %68 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %69 = call i32 @csio_mb_params(%struct.csio_hw* %60, %struct.csio_mb* %61, i32 %62, i32 %65, i32 0, i32 %67, i8** %68, i32* null, i32 0, i32* null)
  %70 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %71 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %72 = call i64 @csio_mb_issue(%struct.csio_hw* %70, %struct.csio_mb* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %41
  %75 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %76 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %78 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %79 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @mempool_free(%struct.csio_mb* %77, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %233

84:                                               ; preds = %41
  %85 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %86 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %87 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %88 = call i32 @ARRAY_SIZE(i8** %87)
  %89 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %90 = call i32 @csio_mb_process_read_params_rsp(%struct.csio_hw* %85, %struct.csio_mb* %86, i32* %6, i32 %88, i8** %89)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @FW_SUCCESS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %84
  %95 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (%struct.csio_hw*, i8*, ...) @csio_err(%struct.csio_hw* %95, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %99 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %100 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @mempool_free(%struct.csio_mb* %98, i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %233

105:                                              ; preds = %84
  %106 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 0
  %107 = load i8*, i8** %106, align 16
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %110 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 1
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %114 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  %117 = load i8*, i8** %116, align 16
  %118 = load %struct.csio_wrm*, %struct.csio_wrm** %4, align 8
  %119 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  %121 = load i8*, i8** %120, align 16
  %122 = load %struct.csio_wrm*, %struct.csio_wrm** %4, align 8
  %123 = getelementptr inbounds %struct.csio_wrm, %struct.csio_wrm* %122, i32 0, i32 0
  store i8* %121, i8** %123, align 8
  %124 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %125 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CSIO_HWF_USING_SOFT_PARAMS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %105
  %131 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %132 = call i32 @csio_is_hw_master(%struct.csio_hw* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %166, label %134

134:                                              ; preds = %130, %105
  %135 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 5
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 4
  %138 = load i8*, i8** %137, align 16
  %139 = ptrtoint i8* %136 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = add nsw i64 %141, 1
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %145 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %144, i32 0, i32 6
  store i8* %143, i8** %145, align 8
  %146 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 3
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds [6 x i8*], [6 x i8*]* %7, i64 0, i64 2
  %149 = load i8*, i8** %148, align 16
  %150 = ptrtoint i8* %147 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = add nsw i64 %152, 1
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %156 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %158 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %159 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %158, i32 0, i32 6
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %160 to i32
  %162 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %163 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %162, i32 0, i32 5
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_dbg(%struct.csio_hw* %157, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %161, i8* %164)
  br label %166

166:                                              ; preds = %134, %130
  %167 = load i32, i32* @csio_port_mask, align 4
  %168 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %169 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %173 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @hweight32(i32 %174)
  %176 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %177 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %176, i32 0, i32 2
  store i32 %175, i32* %177, align 8
  %178 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %179 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %180 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %183 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_dbg(%struct.csio_hw* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %184)
  store i32 0, i32* %8, align 4
  br label %186

186:                                              ; preds = %224, %166
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %189 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %187, %190
  br i1 %191, label %192, label %227

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %201, %192
  %194 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %195 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %9, align 4
  %198 = shl i32 1, %197
  %199 = and i32 %196, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %193

204:                                              ; preds = %193
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  %207 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %208 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %207, i32 0, i32 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 %205, i32* %213, align 4
  %214 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %215 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %216 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %215, i32 0, i32 4
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (%struct.csio_hw*, i8*, i32, ...) @csio_dbg(%struct.csio_hw* %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %222)
  br label %224

224:                                              ; preds = %204
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %8, align 4
  br label %186

227:                                              ; preds = %186
  %228 = load %struct.csio_mb*, %struct.csio_mb** %5, align 8
  %229 = load %struct.csio_hw*, %struct.csio_hw** %3, align 8
  %230 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @mempool_free(%struct.csio_mb* %228, i32 %231)
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %227, %94, %74, %35
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

declare dso_local %struct.csio_wrm* @csio_hw_to_wrm(%struct.csio_hw*) #1

declare dso_local %struct.csio_mb* @mempool_alloc(i32, i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i8* @FW_PARAM_DEV(i32) #1

declare dso_local i8* @FW_PARAM_PFVF(i32) #1

declare dso_local i32 @csio_mb_params(%struct.csio_hw*, %struct.csio_mb*, i32, i32, i32, i32, i8**, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @csio_mb_issue(%struct.csio_hw*, %struct.csio_mb*) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, ...) #1

declare dso_local i32 @mempool_free(%struct.csio_mb*, i32) #1

declare dso_local i32 @csio_mb_process_read_params_rsp(%struct.csio_hw*, %struct.csio_mb*, i32*, i32, i8**) #1

declare dso_local i32 @csio_is_hw_master(%struct.csio_hw*) #1

declare dso_local i32 @csio_dbg(%struct.csio_hw*, i8*, i32, ...) #1

declare dso_local i32 @hweight32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
