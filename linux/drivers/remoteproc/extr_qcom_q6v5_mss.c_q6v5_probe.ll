; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.rproc_hexagon_res = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.q6v5 = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.rproc*, %struct.TYPE_7__* }
%struct.rproc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@q6v5_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate rproc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"modem.mdt\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to get proxy clocks.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to get reset clocks.\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get active clocks.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to get proxy regulators.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to get active regulators.\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Failed to attach active power domains\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to init power domains\0A\00", align 1
@MPSS_CRASH_REASON_SMEM = common dso_local global i32 0, align 4
@qcom_msa_handover = common dso_local global i32 0, align 4
@QCOM_SCM_VMID_HLOS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"mpss\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"modem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @q6v5_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rproc_hexagon_res*, align 8
  %5 = alloca %struct.q6v5*, align 8
  %6 = alloca %struct.rproc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.rproc_hexagon_res* @of_device_get_match_data(%struct.TYPE_7__* %10)
  store %struct.rproc_hexagon_res* %11, %struct.rproc_hexagon_res** %4, align 8
  %12 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %13 = icmp ne %struct.rproc_hexagon_res* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %339

17:                                               ; preds = %1
  %18 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %19 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = call i32 (...) @qcom_scm_is_available()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %339

28:                                               ; preds = %22, %17
  %29 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %30 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @of_property_read_string_index(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i8** %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %339

46:                                               ; preds = %39, %28
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call %struct.rproc* @rproc_alloc(%struct.TYPE_7__* %48, i32 %51, i32* @q6v5_ops, i8* %52, i32 144)
  store %struct.rproc* %53, %struct.rproc** %6, align 8
  %54 = load %struct.rproc*, %struct.rproc** %6, align 8
  %55 = icmp ne %struct.rproc* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %46
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_7__* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %339

62:                                               ; preds = %46
  %63 = load %struct.rproc*, %struct.rproc** %6, align 8
  %64 = getelementptr inbounds %struct.rproc, %struct.rproc* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.rproc*, %struct.rproc** %6, align 8
  %66 = getelementptr inbounds %struct.rproc, %struct.rproc* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.q6v5*
  store %struct.q6v5* %68, %struct.q6v5** %5, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %72 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %71, i32 0, i32 26
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %72, align 8
  %73 = load %struct.rproc*, %struct.rproc** %6, align 8
  %74 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %75 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %74, i32 0, i32 25
  store %struct.rproc* %73, %struct.rproc** %75, align 8
  %76 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %77 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %76, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %77, align 8
  %78 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %79 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %83 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %82, i32 0, i32 0
  %84 = call i32 @of_property_read_string_index(i32 %81, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 1, i8** %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %62
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %2, align 4
  br label %339

94:                                               ; preds = %87, %62
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %97 = call i32 @platform_set_drvdata(%struct.platform_device* %95, %struct.q6v5* %96)
  %98 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = call i32 @q6v5_init_mem(%struct.q6v5* %98, %struct.platform_device* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %335

104:                                              ; preds = %94
  %105 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %106 = call i32 @q6v5_alloc_memory_region(%struct.q6v5* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  br label %335

110:                                              ; preds = %104
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %114 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %113, i32 0, i32 24
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %117 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @q6v5_init_clocks(%struct.TYPE_7__* %112, i32 %115, i32 %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %110
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = call i32 @dev_err(%struct.TYPE_7__* %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %335

126:                                              ; preds = %110
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %129 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 0
  %132 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %133 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %132, i32 0, i32 23
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %136 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @q6v5_init_clocks(%struct.TYPE_7__* %131, i32 %134, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %126
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @dev_err(%struct.TYPE_7__* %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %335

145:                                              ; preds = %126
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %148 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %150 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %149, i32 0, i32 0
  %151 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %152 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %151, i32 0, i32 22
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %155 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @q6v5_init_clocks(%struct.TYPE_7__* %150, i32 %153, i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %145
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = call i32 @dev_err(%struct.TYPE_7__* %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %335

164:                                              ; preds = %145
  %165 = load i32, i32* %8, align 4
  %166 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %167 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 8
  %168 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %169 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %168, i32 0, i32 0
  %170 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %171 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %170, i32 0, i32 21
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %174 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @q6v5_regulator_init(%struct.TYPE_7__* %169, i32 %172, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %164
  %180 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %181 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %180, i32 0, i32 0
  %182 = call i32 @dev_err(%struct.TYPE_7__* %181, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %335

183:                                              ; preds = %164
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %186 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %190 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %189, i32 0, i32 20
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %193 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @q6v5_regulator_init(%struct.TYPE_7__* %188, i32 %191, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %183
  %199 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %200 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %199, i32 0, i32 0
  %201 = call i32 @dev_err(%struct.TYPE_7__* %200, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %335

202:                                              ; preds = %183
  %203 = load i32, i32* %8, align 4
  %204 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %205 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %204, i32 0, i32 5
  store i32 %203, i32* %205, align 8
  %206 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %207 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %206, i32 0, i32 0
  %208 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %209 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %212 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @q6v5_pds_attach(%struct.TYPE_7__* %207, i32 %210, i32 %213)
  store i32 %214, i32* %8, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %202
  %218 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %219 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %218, i32 0, i32 0
  %220 = call i32 @dev_err(%struct.TYPE_7__* %219, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %335

221:                                              ; preds = %202
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %224 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %223, i32 0, i32 6
  store i32 %222, i32* %224, align 4
  %225 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %226 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %225, i32 0, i32 0
  %227 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %228 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %231 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @q6v5_pds_attach(%struct.TYPE_7__* %226, i32 %229, i32 %232)
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %8, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %221
  %237 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %238 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %237, i32 0, i32 0
  %239 = call i32 @dev_err(%struct.TYPE_7__* %238, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %326

240:                                              ; preds = %221
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %243 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %242, i32 0, i32 7
  store i32 %241, i32* %243, align 8
  %244 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %245 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %248 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %247, i32 0, i32 19
  store i32 %246, i32* %248, align 4
  %249 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %250 = call i32 @q6v5_init_reset(%struct.q6v5* %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %240
  br label %317

254:                                              ; preds = %240
  %255 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %256 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %259 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %258, i32 0, i32 18
  store i32 %257, i32* %259, align 8
  %260 = load %struct.rproc_hexagon_res*, %struct.rproc_hexagon_res** %4, align 8
  %261 = getelementptr inbounds %struct.rproc_hexagon_res, %struct.rproc_hexagon_res* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %264 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %263, i32 0, i32 17
  store i64 %262, i64* %264, align 8
  %265 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %266 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %265, i32 0, i32 16
  %267 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %268 = load %struct.rproc*, %struct.rproc** %6, align 8
  %269 = load i32, i32* @MPSS_CRASH_REASON_SMEM, align 4
  %270 = load i32, i32* @qcom_msa_handover, align 4
  %271 = call i32 @qcom_q6v5_init(i32* %266, %struct.platform_device* %267, %struct.rproc* %268, i32 %269, i32 %270)
  store i32 %271, i32* %8, align 4
  %272 = load i32, i32* %8, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %254
  br label %317

275:                                              ; preds = %254
  %276 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %277 = call i8* @BIT(i32 %276)
  %278 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %279 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %278, i32 0, i32 15
  store i8* %277, i8** %279, align 8
  %280 = load i32, i32* @QCOM_SCM_VMID_HLOS, align 4
  %281 = call i8* @BIT(i32 %280)
  %282 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %283 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %282, i32 0, i32 14
  store i8* %281, i8** %283, align 8
  %284 = load %struct.rproc*, %struct.rproc** %6, align 8
  %285 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %286 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %285, i32 0, i32 13
  %287 = call i32 @qcom_add_glink_subdev(%struct.rproc* %284, i32* %286)
  %288 = load %struct.rproc*, %struct.rproc** %6, align 8
  %289 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %290 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %289, i32 0, i32 12
  %291 = call i32 @qcom_add_smd_subdev(%struct.rproc* %288, i32* %290)
  %292 = load %struct.rproc*, %struct.rproc** %6, align 8
  %293 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %294 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %293, i32 0, i32 11
  %295 = call i32 @qcom_add_ssr_subdev(%struct.rproc* %292, i32* %294, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %296 = load %struct.rproc*, %struct.rproc** %6, align 8
  %297 = call i32 @qcom_add_sysmon_subdev(%struct.rproc* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 18)
  %298 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %299 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %298, i32 0, i32 10
  store i32 %297, i32* %299, align 4
  %300 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %301 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @IS_ERR(i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %275
  %306 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %307 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %306, i32 0, i32 10
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @PTR_ERR(i32 %308)
  store i32 %309, i32* %8, align 4
  br label %317

310:                                              ; preds = %275
  %311 = load %struct.rproc*, %struct.rproc** %6, align 8
  %312 = call i32 @rproc_add(%struct.rproc* %311)
  store i32 %312, i32* %8, align 4
  %313 = load i32, i32* %8, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %317

316:                                              ; preds = %310
  store i32 0, i32* %2, align 4
  br label %339

317:                                              ; preds = %315, %305, %274, %253
  %318 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %319 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %320 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %319, i32 0, i32 9
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %323 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @q6v5_pds_detach(%struct.q6v5* %318, i32 %321, i32 %324)
  br label %326

326:                                              ; preds = %317, %236
  %327 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %328 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %329 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.q6v5*, %struct.q6v5** %5, align 8
  %332 = getelementptr inbounds %struct.q6v5, %struct.q6v5* %331, i32 0, i32 6
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @q6v5_pds_detach(%struct.q6v5* %327, i32 %330, i32 %333)
  br label %335

335:                                              ; preds = %326, %217, %198, %179, %160, %141, %122, %109, %103
  %336 = load %struct.rproc*, %struct.rproc** %6, align 8
  %337 = call i32 @rproc_free(%struct.rproc* %336)
  %338 = load i32, i32* %8, align 4
  store i32 %338, i32* %2, align 4
  br label %339

339:                                              ; preds = %335, %316, %92, %56, %44, %25, %14
  %340 = load i32, i32* %2, align 4
  ret i32 %340
}

declare dso_local %struct.rproc_hexagon_res* @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @qcom_scm_is_available(...) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local %struct.rproc* @rproc_alloc(%struct.TYPE_7__*, i32, i32*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.q6v5*) #1

declare dso_local i32 @q6v5_init_mem(%struct.q6v5*, %struct.platform_device*) #1

declare dso_local i32 @q6v5_alloc_memory_region(%struct.q6v5*) #1

declare dso_local i32 @q6v5_init_clocks(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @q6v5_regulator_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @q6v5_pds_attach(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @q6v5_init_reset(%struct.q6v5*) #1

declare dso_local i32 @qcom_q6v5_init(i32*, %struct.platform_device*, %struct.rproc*, i32, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @qcom_add_glink_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @qcom_add_smd_subdev(%struct.rproc*, i32*) #1

declare dso_local i32 @qcom_add_ssr_subdev(%struct.rproc*, i32*, i8*) #1

declare dso_local i32 @qcom_add_sysmon_subdev(%struct.rproc*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @rproc_add(%struct.rproc*) #1

declare dso_local i32 @q6v5_pds_detach(%struct.q6v5*, i32, i32) #1

declare dso_local i32 @rproc_free(%struct.rproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
