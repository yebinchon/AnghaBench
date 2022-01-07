; ModuleID = '/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c___arm_spe_pmu_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/perf/extr_arm_spe_pmu.c___arm_spe_pmu_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_spe_pmu = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@ID_AA64DFR0_EL1 = common dso_local global i32 0, align 4
@ID_AA64DFR0_PMSVER_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"unsupported ID_AA64DFR0_EL1.PMSVer [%d] on CPU %d\0A\00", align 1
@SYS_PMBIDR_EL1 = common dso_local global i32 0, align 4
@SYS_PMBIDR_EL1_P_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"profiling buffer owned by higher exception level\0A\00", align 1
@SYS_PMBIDR_EL1_ALIGN_SHIFT = common dso_local global i32 0, align 4
@SYS_PMBIDR_EL1_ALIGN_MASK = common dso_local global i32 0, align 4
@SZ_2K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"unsupported PMBIDR.Align [%d] on CPU %d\0A\00", align 1
@SYS_PMSIDR_EL1 = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_FE_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_EVT = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_FT_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_TYP = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_FL_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_FILT_LAT = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_ARCHINST_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_ARCH_INST = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_LDS_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_LDS = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_ERND_SHIFT = common dso_local global i32 0, align 4
@SPE_PMU_FEAT_ERND = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_INTERVAL_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_INTERVAL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"unknown PMSIDR_EL1.Interval [%d]; assuming 8\0A\00", align 1
@SYS_PMSIDR_EL1_MAXSIZE_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_MAXSIZE_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"unsupported PMSIDR_EL1.MaxSize [%d] on CPU %d\0A\00", align 1
@SYS_PMSIDR_EL1_COUNTSIZE_SHIFT = common dso_local global i32 0, align 4
@SYS_PMSIDR_EL1_COUNTSIZE_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"unknown PMSIDR_EL1.CountSize [%d]; assuming 2\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"probed for CPUs %*pbl [max_record_sz %u, align %u, features 0x%llx]\0A\00", align 1
@SPE_PMU_FEAT_DEV_PROBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__arm_spe_pmu_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__arm_spe_pmu_dev_probe(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_spe_pmu*, align 8
  %6 = alloca %struct.device*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.arm_spe_pmu*
  store %struct.arm_spe_pmu* %8, %struct.arm_spe_pmu** %5, align 8
  %9 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %10 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %9, i32 0, i32 6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load i32, i32* @ID_AA64DFR0_EL1, align 4
  %14 = call i32 @read_cpuid(i32 %13)
  %15 = load i32, i32* @ID_AA64DFR0_PMSVER_SHIFT, align 4
  %16 = call i32 @cpuid_feature_extract_unsigned_field(i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (...) @smp_processor_id()
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %223

24:                                               ; preds = %1
  %25 = load i32, i32* @SYS_PMBIDR_EL1, align 4
  %26 = call i32 @read_sysreg_s(i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SYS_PMBIDR_EL1_P_SHIFT, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %223

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SYS_PMBIDR_EL1_ALIGN_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @SYS_PMBIDR_EL1_ALIGN_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = shl i32 1, %41
  %43 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %44 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %46 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SZ_2K, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %35
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (...) @smp_processor_id()
  %54 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %223

55:                                               ; preds = %35
  %56 = load i32, i32* @SYS_PMSIDR_EL1, align 4
  %57 = call i32 @read_sysreg_s(i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SYS_PMSIDR_EL1_FE_SHIFT, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load i32, i32* @SPE_PMU_FEAT_FILT_EVT, align 4
  %65 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %66 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %55
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @SYS_PMSIDR_EL1_FT_SHIFT, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @SPE_PMU_FEAT_FILT_TYP, align 4
  %77 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %78 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %69
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @SYS_PMSIDR_EL1_FL_SHIFT, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = and i32 %82, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load i32, i32* @SPE_PMU_FEAT_FILT_LAT, align 4
  %89 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %90 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @SYS_PMSIDR_EL1_ARCHINST_SHIFT, align 4
  %96 = call i32 @BIT(i32 %95)
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* @SPE_PMU_FEAT_ARCH_INST, align 4
  %101 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %102 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SYS_PMSIDR_EL1_LDS_SHIFT, align 4
  %108 = call i32 @BIT(i32 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @SPE_PMU_FEAT_LDS, align 4
  %113 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %114 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %105
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @SYS_PMSIDR_EL1_ERND_SHIFT, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %117
  %124 = load i32, i32* @SPE_PMU_FEAT_ERND, align 4
  %125 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %126 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %117
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @SYS_PMSIDR_EL1_INTERVAL_SHIFT, align 4
  %132 = ashr i32 %130, %131
  %133 = load i32, i32* @SYS_PMSIDR_EL1_INTERVAL_MASK, align 4
  %134 = and i32 %132, %133
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  switch i32 %135, label %157 [
    i32 0, label %136
    i32 2, label %139
    i32 3, label %142
    i32 4, label %145
    i32 5, label %148
    i32 6, label %151
    i32 7, label %154
    i32 8, label %161
  ]

136:                                              ; preds = %129
  %137 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %138 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %137, i32 0, i32 1
  store i32 256, i32* %138, align 4
  br label %164

139:                                              ; preds = %129
  %140 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %141 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %140, i32 0, i32 1
  store i32 512, i32* %141, align 4
  br label %164

142:                                              ; preds = %129
  %143 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %144 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %143, i32 0, i32 1
  store i32 768, i32* %144, align 4
  br label %164

145:                                              ; preds = %129
  %146 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %147 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %146, i32 0, i32 1
  store i32 1024, i32* %147, align 4
  br label %164

148:                                              ; preds = %129
  %149 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %150 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %149, i32 0, i32 1
  store i32 1536, i32* %150, align 4
  br label %164

151:                                              ; preds = %129
  %152 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %153 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %152, i32 0, i32 1
  store i32 2048, i32* %153, align 4
  br label %164

154:                                              ; preds = %129
  %155 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %156 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %155, i32 0, i32 1
  store i32 3072, i32* %156, align 4
  br label %164

157:                                              ; preds = %129
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load i32, i32* %3, align 4
  %160 = call i32 @dev_warn(%struct.device* %158, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %129, %157
  %162 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %163 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %162, i32 0, i32 1
  store i32 4096, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %154, %151, %148, %145, %142, %139, %136
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @SYS_PMSIDR_EL1_MAXSIZE_SHIFT, align 4
  %167 = ashr i32 %165, %166
  %168 = load i32, i32* @SYS_PMSIDR_EL1_MAXSIZE_MASK, align 4
  %169 = and i32 %167, %168
  store i32 %169, i32* %3, align 4
  %170 = load i32, i32* %3, align 4
  %171 = shl i32 1, %170
  %172 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %173 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %175 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @SZ_2K, align 4
  %178 = icmp sgt i32 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %164
  %180 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %181 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp slt i32 %182, 16
  br i1 %183, label %184, label %189

184:                                              ; preds = %179, %164
  %185 = load %struct.device*, %struct.device** %6, align 8
  %186 = load i32, i32* %3, align 4
  %187 = call i32 (...) @smp_processor_id()
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %185, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %186, i32 %187)
  br label %223

189:                                              ; preds = %179
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @SYS_PMSIDR_EL1_COUNTSIZE_SHIFT, align 4
  %192 = ashr i32 %190, %191
  %193 = load i32, i32* @SYS_PMSIDR_EL1_COUNTSIZE_MASK, align 4
  %194 = and i32 %192, %193
  store i32 %194, i32* %3, align 4
  %195 = load i32, i32* %3, align 4
  switch i32 %195, label %196 [
    i32 2, label %200
  ]

196:                                              ; preds = %189
  %197 = load %struct.device*, %struct.device** %6, align 8
  %198 = load i32, i32* %3, align 4
  %199 = call i32 @dev_warn(%struct.device* %197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %189, %196
  %201 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %202 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %201, i32 0, i32 3
  store i32 12, i32* %202, align 4
  br label %203

203:                                              ; preds = %200
  %204 = load %struct.device*, %struct.device** %6, align 8
  %205 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %206 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %205, i32 0, i32 5
  %207 = call i32 @cpumask_pr_args(i32* %206)
  %208 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %209 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %212 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %215 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @dev_info(%struct.device* %204, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %207, i32 %210, i32 %213, i32 %216)
  %218 = load i32, i32* @SPE_PMU_FEAT_DEV_PROBED, align 4
  %219 = load %struct.arm_spe_pmu*, %struct.arm_spe_pmu** %5, align 8
  %220 = getelementptr inbounds %struct.arm_spe_pmu, %struct.arm_spe_pmu* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %203, %184, %50, %32, %19
  ret void
}

declare dso_local i32 @cpuid_feature_extract_unsigned_field(i32, i32) #1

declare dso_local i32 @read_cpuid(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @read_sysreg_s(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cpumask_pr_args(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
