; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mba_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_mba_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q6v5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"failed to enable active power domains\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable proxy power domains\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to enable proxy supplies\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to enable proxy clocks\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to enable supplies\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to enable reset clocks\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to deassert mss restart\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"failed to enable clocks\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"assigning Q6 access to mba memory failed: %d\0A\00", align 1
@RMB_MBA_IMAGE_REG = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"MBA boot timed out\0A\00", align 1
@RMB_MBA_XPU_UNLOCKED = common dso_local global i32 0, align 4
@RMB_MBA_XPU_UNLOCKED_SCRIBBLED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"MBA returned unexpected status %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [58 x i8] c"Failed to reclaim mba buffer, system may become unstable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.q6v5*)* @q6v5_mba_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_mba_load(%struct.q6v5* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.q6v5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.q6v5* %0, %struct.q6v5** %3, align 8
  %6 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %7 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %6, i32 0, i32 1
  %8 = call i32 @qcom_q6v5_prepare(i32* %7)
  %9 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %10 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %11 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %14 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @q6v5_pds_enable(%struct.q6v5* %9, i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %21 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_err(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %318

24:                                               ; preds = %1
  %25 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %26 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %27 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %30 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @q6v5_pds_enable(%struct.q6v5* %25, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %37 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %309

40:                                               ; preds = %24
  %41 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %42 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %43 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %46 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @q6v5_regulator_enable(%struct.q6v5* %41, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %53 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %300

56:                                               ; preds = %40
  %57 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %58 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %61 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %64 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @q6v5_clk_enable(i32 %59, i32 %62, i32 %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %71 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %291

74:                                               ; preds = %56
  %75 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %76 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %77 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %80 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @q6v5_regulator_enable(%struct.q6v5* %75, i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %87 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %280

90:                                               ; preds = %74
  %91 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %92 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %95 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %94, i32 0, i32 14
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %98 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @q6v5_clk_enable(i32 %93, i32 %96, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %90
  %104 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %105 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %271

108:                                              ; preds = %90
  %109 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %110 = call i32 @q6v5_reset_deassert(%struct.q6v5* %109)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %115 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %114, i32 0, i32 10
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, ...) @dev_err(i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %260

118:                                              ; preds = %108
  %119 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %120 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %119, i32 0, i32 10
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %123 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %122, i32 0, i32 16
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %126 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @q6v5_clk_enable(i32 %121, i32 %124, i32 %127)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %118
  %132 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %133 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %257

136:                                              ; preds = %118
  %137 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %138 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %139 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %138, i32 0, i32 19
  %140 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %141 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %140, i32 0, i32 18
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %144 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %143, i32 0, i32 17
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %137, i32* %139, i32 1, i32 %142, i32 %145)
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %136
  %150 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %151 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %150, i32 0, i32 10
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, ...) @dev_err(i32 %152, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %153)
  br label %246

155:                                              ; preds = %136
  %156 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %157 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %156, i32 0, i32 18
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %160 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %159, i32 0, i32 24
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @RMB_MBA_IMAGE_REG, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 %158, i64 %163)
  %165 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %166 = call i32 @q6v5proc_reset(%struct.q6v5* %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %227

170:                                              ; preds = %155
  %171 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %172 = call i32 @q6v5_rmb_mba_wait(%struct.q6v5* %171, i32 0, i32 5000)
  store i32 %172, i32* %4, align 4
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @ETIMEDOUT, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %170
  %178 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %179 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %202

182:                                              ; preds = %170
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @RMB_MBA_XPU_UNLOCKED, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @RMB_MBA_XPU_UNLOCKED_SCRIBBLED, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %192 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %191, i32 0, i32 10
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 (i32, i8*, ...) @dev_err(i32 %193, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @EINVAL, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %4, align 4
  br label %202

198:                                              ; preds = %186, %182
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %201 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  store i32 0, i32* %2, align 4
  br label %323

202:                                              ; preds = %190, %177
  %203 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %204 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %205 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %204, i32 0, i32 21
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %208 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %207, i32 0, i32 23
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %203, i32 %206, i32 %209)
  %211 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %212 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %213 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %212, i32 0, i32 21
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %216 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %215, i32 0, i32 22
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %211, i32 %214, i32 %217)
  %219 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %220 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %221 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %220, i32 0, i32 21
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %224 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %223, i32 0, i32 20
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @q6v5proc_halt_axi_port(%struct.q6v5* %219, i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %202, %169
  %228 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %229 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %230 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %229, i32 0, i32 19
  %231 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %232 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %231, i32 0, i32 18
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %235 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %234, i32 0, i32 17
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @q6v5_xfer_mem_ownership(%struct.q6v5* %228, i32* %230, i32 0, i32 %233, i32 %236)
  store i32 %237, i32* %5, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %227
  %241 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %242 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i32, i8*, ...) @dev_err(i32 %243, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  br label %245

245:                                              ; preds = %240, %227
  br label %246

246:                                              ; preds = %245, %149
  %247 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %248 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %251 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %250, i32 0, i32 16
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %254 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %253, i32 0, i32 15
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @q6v5_clk_disable(i32 %249, i32 %252, i32 %255)
  br label %257

257:                                              ; preds = %246, %131
  %258 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %259 = call i32 @q6v5_reset_assert(%struct.q6v5* %258)
  br label %260

260:                                              ; preds = %257, %113
  %261 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %262 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %265 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %264, i32 0, i32 14
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %268 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %267, i32 0, i32 13
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @q6v5_clk_disable(i32 %263, i32 %266, i32 %269)
  br label %271

271:                                              ; preds = %260, %103
  %272 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %273 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %274 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %273, i32 0, i32 12
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %277 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %276, i32 0, i32 11
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @q6v5_regulator_disable(%struct.q6v5* %272, i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %271, %85
  %281 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %282 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %281, i32 0, i32 10
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %285 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %284, i32 0, i32 9
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %288 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %287, i32 0, i32 8
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @q6v5_clk_disable(i32 %283, i32 %286, i32 %289)
  br label %291

291:                                              ; preds = %280, %69
  %292 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %293 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %294 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %297 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @q6v5_regulator_disable(%struct.q6v5* %292, i32 %295, i32 %298)
  br label %300

300:                                              ; preds = %291, %51
  %301 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %302 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %303 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %306 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @q6v5_pds_disable(%struct.q6v5* %301, i32 %304, i32 %307)
  br label %309

309:                                              ; preds = %300, %35
  %310 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %311 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %312 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %315 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @q6v5_pds_disable(%struct.q6v5* %310, i32 %313, i32 %316)
  br label %318

318:                                              ; preds = %309, %19
  %319 = load %struct.q6v5*, %struct.q6v5** %3, align 8
  %320 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %319, i32 0, i32 1
  %321 = call i32 @qcom_q6v5_unprepare(i32* %320)
  %322 = load i32, i32* %4, align 4
  store i32 %322, i32* %2, align 4
  br label %323

323:                                              ; preds = %318, %199
  %324 = load i32, i32* %2, align 4
  ret i32 %324
}

declare dso_local i32 @qcom_q6v5_prepare(i32*) #1

declare dso_local i32 @q6v5_pds_enable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @q6v5_regulator_enable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @q6v5_clk_enable(i32, i32, i32) #1

declare dso_local i32 @q6v5_reset_deassert(%struct.q6v5*) #1

declare dso_local i32 @q6v5_xfer_mem_ownership(%struct.q6v5*, i32*, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @q6v5proc_reset(%struct.q6v5*) #1

declare dso_local i32 @q6v5_rmb_mba_wait(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @q6v5proc_halt_axi_port(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @q6v5_clk_disable(i32, i32, i32) #1

declare dso_local i32 @q6v5_reset_assert(%struct.q6v5*) #1

declare dso_local i32 @q6v5_regulator_disable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @q6v5_pds_disable(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @qcom_q6v5_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
